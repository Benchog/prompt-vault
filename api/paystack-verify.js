import { createClient } from '@supabase/supabase-js'

const supabaseAdmin =
  process.env.SUPABASE_URL && process.env.SUPABASE_SERVICE_ROLE_KEY
    ? createClient(process.env.SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)
    : null

export default async function handler(req, res) {
  if (req.method !== 'POST') {
    return res.status(405).json({ message: 'Method not allowed' })
  }

  const paystackSecret = process.env.PAYSTACK_SECRET_KEY
  if (!paystackSecret) {
    return res.status(500).json({ message: 'Missing PAYSTACK_SECRET_KEY' })
  }

  const { reference, email, packageName, amount, currency } = req.body || {}
  if (!reference) {
    return res.status(400).json({ message: 'Missing payment reference' })
  }

  try {
    const verifyResponse = await fetch(
      `https://api.paystack.co/transaction/verify/${encodeURIComponent(reference)}`,
      {
        headers: { Authorization: `Bearer ${paystackSecret}` },
      },
    )
    const verification = await verifyResponse.json()

    if (!verifyResponse.ok || !verification?.status || verification?.data?.status !== 'success') {
      return res.status(400).json({
        message: verification?.message || 'Paystack verification failed',
      })
    }

    if (supabaseAdmin) {
      await supabaseAdmin.from('payment_events').upsert(
        {
          reference,
          email,
          package_name: packageName,
          amount: Number(amount || verification.data.amount || 0),
          currency: currency || verification.data.currency || 'GHS',
          status: verification.data.status,
          gateway_response: verification.data.gateway_response || null,
          paid_at: verification.data.paid_at || null,
          raw_payload: verification.data,
        },
        { onConflict: 'reference' },
      )
    }

    return res.status(200).json({ ok: true, message: 'Payment verified' })
  } catch (error) {
    return res.status(500).json({
      message: 'Server verification failed',
      error: error instanceof Error ? error.message : 'unknown',
    })
  }
}
