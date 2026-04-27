import crypto from 'node:crypto'
import { createClient } from '@supabase/supabase-js'

const supabaseAdmin =
  process.env.SUPABASE_URL && process.env.SUPABASE_SERVICE_ROLE_KEY
    ? createClient(process.env.SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)
    : null

function getBodyString(body) {
  if (!body) return ''
  if (typeof body === 'string') return body
  return JSON.stringify(body)
}

export default async function handler(req, res) {
  if (req.method !== 'POST') {
    return res.status(405).json({ message: 'Method not allowed' })
  }

  const paystackSecret = process.env.PAYSTACK_SECRET_KEY
  if (!paystackSecret) {
    return res.status(500).json({ message: 'Missing PAYSTACK_SECRET_KEY' })
  }

  const signature = req.headers['x-paystack-signature']
  if (!signature) {
    return res.status(401).json({ message: 'Missing signature' })
  }

  const bodyString = getBodyString(req.body)
  const expectedSignature = crypto
    .createHmac('sha512', paystackSecret)
    .update(bodyString)
    .digest('hex')

  if (signature !== expectedSignature) {
    return res.status(401).json({ message: 'Invalid webhook signature' })
  }

  const payload = typeof req.body === 'string' ? JSON.parse(req.body) : req.body
  const eventType = payload?.event || null
  const data = payload?.data || {}
  const reference = data?.reference || null

  if (supabaseAdmin) {
    if (reference) {
      await supabaseAdmin.from('payment_events').upsert(
        {
          reference,
          email: data?.customer?.email || null,
          package_name: data?.metadata?.custom_fields?.[0]?.value || null,
          amount: Number(data?.amount || 0),
          currency: data?.currency || 'GHS',
          status: data?.status || null,
          gateway_response: data?.gateway_response || null,
          paid_at: data?.paid_at || null,
          raw_payload: data,
        },
        { onConflict: 'reference' },
      )
    }

    await supabaseAdmin.from('payment_webhooks').insert({
      event_type: eventType,
      reference,
      raw_payload: payload,
    })
  }

  return res.status(200).json({ ok: true })
}
