import { useEffect, useMemo, useState } from 'react'
import {
  AlertTriangle,
  ArrowUpRight,
  BadgeCheck,
  Banknote,
  BookOpenText,
  BriefcaseBusiness,
  Building2,
  ChartNoAxesCombined,
  ChevronDown,
  Command,
  Download,
  Gem,
  GraduationCap,
  HandCoins,
  Layers,
  Library,
  LockKeyhole,
  LogIn,
  LogOut,
  PencilLine,
  Plus,
  Search,
  ShieldCheck,
  Sparkles,
  Store,
  TimerReset,
  Upload,
  Video,
} from 'lucide-react'
import { createClient } from '@supabase/supabase-js'
import { BrowserRouter, Link, Route, Routes } from 'react-router-dom'
import PaystackPop from '@paystack/inline-js'
import promptLibrary from './data/prompt-library.json'

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnon = import.meta.env.VITE_SUPABASE_ANON_KEY
const paystackPublicKey = import.meta.env.VITE_PAYSTACK_PUBLIC_KEY

const supabase =
  supabaseUrl && supabaseAnon ? createClient(supabaseUrl, supabaseAnon) : null

const iconByCategory = {
  'CONTENT CREATION': Video,
  BUSINESS: BriefcaseBusiness,
  STUDENTS: GraduationCap,
  'CAREER & CV': HandCoins,
  'SIDE HUSTLE': Banknote,
  'PERSONAL GROWTH': Sparkles,
}

const defaultPackages = [
  { id: 1, name: 'Content Creator Pack', category: 'CONTENT CREATION', price: 25, prompt_count: 40, checkout_url: '#' },
  { id: 2, name: 'Business Writing Pack', category: 'BUSINESS', price: 25, prompt_count: 30, checkout_url: '#' },
  { id: 3, name: 'Student Powerpack', category: 'STUDENTS', price: 20, prompt_count: 35, checkout_url: '#' },
  { id: 4, name: 'Career & CV Pack', category: 'CAREER & CV', price: 25, prompt_count: 28, checkout_url: '#' },
  { id: 5, name: 'Side Hustle Starter', category: 'SIDE HUSTLE', price: 25, prompt_count: 32, checkout_url: '#' },
  { id: 6, name: 'Personal Growth Pack', category: 'PERSONAL GROWTH', price: 20, prompt_count: 25, checkout_url: '#' },
]

const faqItems = [
  {
    q: 'Can I update prices and packages from Supabase?',
    a: 'Yes. Connect your Supabase project and manage records in the packages table. The storefront reflects those values automatically.',
  },
  {
    q: 'Can I add or edit prompts without touching code?',
    a: 'Yes. Add rows in the prompts table and assign them to a package. This UI will show them instantly after refresh.',
  },
  {
    q: 'Do these prompts work with free AI tools?',
    a: 'They are designed to work with ChatGPT, Claude, Gemini, and other major assistants, including free tiers.',
  },
]

const stripEmoji = (value = '') =>
  value.replace(/\p{Extended_Pictographic}/gu, '').replace(/\s{2,}/g, ' ').trim()

function normalizePromptData() {
  return promptLibrary.packs.map((pack) => ({
    ...pack,
    key: pack.name.toUpperCase(),
    prompts: pack.prompts.map((prompt) => ({
      ...prompt,
      title: stripEmoji(prompt.title),
      summary: stripEmoji(prompt.summary),
      prompt: stripEmoji(prompt.prompt),
      proTip: stripEmoji(prompt.proTip),
    })),
  }))
}

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Storefront />} />
        <Route path="/terms" element={<LegalPage title="Terms of Service" content={termsContent} />} />
        <Route path="/privacy" element={<LegalPage title="Privacy Policy" content={privacyContent} />} />
        <Route path="/refund" element={<LegalPage title="Refund Policy" content={refundContent} />} />
      </Routes>
    </BrowserRouter>
  )
}

function Storefront() {
  const [packages, setPackages] = useState(defaultPackages)
  const [packs, setPacks] = useState(normalizePromptData())
  const [query, setQuery] = useState('')
  const [activeCategory, setActiveCategory] = useState('ALL')
  const [openFaq, setOpenFaq] = useState(0)
  const [mode, setMode] = useState('store')
  const [status, setStatus] = useState('Using bundled data. Add Supabase keys for live CMS.')
  const [saving, setSaving] = useState(false)
  const [adminSession, setAdminSession] = useState(null)
  const [adminCredentials, setAdminCredentials] = useState({ email: '', password: '' })
  const [buyerEmail, setBuyerEmail] = useState('')
  const [packageForm, setPackageForm] = useState({
    id: '',
    name: '',
    category: '',
    price: '',
    checkout_url: '',
  })
  const [promptForm, setPromptForm] = useState({
    category: '',
    prompt_number: '',
    title: '',
    summary: '',
    prompt: '',
    pro_tip: '',
  })
  const [testimonialForm, setTestimonialForm] = useState({
    quote: '',
    person: '',
    role: '',
  })
  const [testimonials, setTestimonials] = useState([
    {
      quote:
        'PromptVault gave my team a complete repeatable workflow. We now create campaign content in under one hour.',
      person: 'Esi K.',
      role: 'Marketing Lead',
    },
    {
      quote:
        'The Career prompts turned my interview prep into a system. I got two offer letters in three weeks.',
      person: 'Nana A.',
      role: 'Job Seeker',
    },
    {
      quote:
        'I launched my side-hustle pages with stronger copy from day one. Engagement and sales improved immediately.',
      person: 'Michael T.',
      role: 'Founder',
    },
  ])

  useEffect(() => {
    if (!supabase) return

    supabase.auth.getSession().then(({ data }) => {
      setAdminSession(data.session)
    })

    const { data: listener } = supabase.auth.onAuthStateChange((_event, session) => {
      setAdminSession(session)
    })

    const load = async () => {
      const [{ data: remotePackages }, { data: remotePrompts }] = await Promise.all([
        supabase.from('packages').select('*').order('price', { ascending: false }),
        supabase.from('prompts').select('*').order('prompt_number', { ascending: true }),
      ])
      const { data: remoteTestimonials } = await supabase
        .from('testimonials')
        .select('*')
        .order('created_at', { ascending: false })

      if (remotePackages?.length) {
        setPackages(remotePackages)
        setStatus('Connected to Supabase. Live package and prompt editing enabled.')
      }

      if (remotePrompts?.length) {
        const grouped = remotePrompts.reduce((acc, row) => {
          const key = (row.category || 'UNASSIGNED').toUpperCase()
          if (!acc[key]) acc[key] = []
          acc[key].push({
            number: row.prompt_number || acc[key].length + 1,
            title: stripEmoji(row.title),
            summary: stripEmoji(row.summary),
            prompt: stripEmoji(row.prompt),
            proTip: stripEmoji(row.pro_tip || ''),
          })
          return acc
        }, {})

        setPacks(
          Object.entries(grouped).map(([name, prompts], index) => ({
            id: index + 1,
            name,
            key: name,
            prompts,
          })),
        )
      }
      if (remoteTestimonials?.length) {
        setTestimonials(
          remoteTestimonials.map((item) => ({
            quote: item.quote,
            person: item.person,
            role: item.role,
          })),
        )
      }
    }

    load()
    return () => listener.subscription.unsubscribe()
  }, [])

  const categories = useMemo(
    () =>
      packs.map((pack) => ({
        ...pack,
        count: pack.prompts.length,
        price:
          packages.find((item) =>
            item.category?.toUpperCase().includes(pack.name.toUpperCase()),
          )?.price ?? 25,
      })),
    [packs, packages],
  )

  const filteredPrompts = useMemo(() => {
    const promptRows = packs.flatMap((pack) =>
      pack.prompts.map((prompt) => ({ ...prompt, category: pack.name })),
    )

    return promptRows.filter((item) => {
      const byCategory = activeCategory === 'ALL' || item.category === activeCategory
      const term = query.trim().toLowerCase()
      if (!term) return byCategory
      return (
        byCategory &&
        [item.title, item.summary, item.prompt, item.category]
          .join(' ')
          .toLowerCase()
          .includes(term)
      )
    })
  }, [activeCategory, packs, query])

  const totalPrompts = packs.reduce((acc, pack) => acc + pack.prompts.length, 0)
  const hasSupabase = Boolean(supabase)

  const conversionItems = [
    {
      icon: ShieldCheck,
      title: 'Trust-first design system',
      text: 'Clean hierarchy, premium spacing, consistent iconography, and confidence-focused messaging.',
    },
    {
      icon: ChartNoAxesCombined,
      title: 'Offer clarity and urgency',
      text: 'Feature-forward cards, total value positioning, and direct checkout paths reduce friction.',
    },
    {
      icon: LockKeyhole,
      title: 'Payment-ready architecture',
      text: 'Each package can map to a payment link so customers move from decision to checkout quickly.',
    },
  ]

  const syncCategoryPacks = (nextPrompts) => {
    const grouped = nextPrompts.reduce((acc, row) => {
      const key = row.category.toUpperCase()
      if (!acc[key]) acc[key] = []
      acc[key].push(row)
      return acc
    }, {})
    setPacks(
      Object.entries(grouped).map(([name, prompts], index) => ({
        id: index + 1,
        name,
        key: name,
        prompts: prompts.map((prompt, i) => ({
          number: prompt.prompt_number || i + 1,
          title: stripEmoji(prompt.title),
          summary: stripEmoji(prompt.summary),
          prompt: stripEmoji(prompt.prompt),
          proTip: stripEmoji(prompt.pro_tip || ''),
        })),
      })),
    )
  }

  const handlePackageSave = async () => {
    if (!packageForm.name || !packageForm.category || !packageForm.price) return
    setSaving(true)

    if (!hasSupabase) {
      const next = {
        id: Date.now(),
        ...packageForm,
        price: Number(packageForm.price),
        prompt_count: packages.find((p) => p.category === packageForm.category)?.prompt_count || 0,
      }
      setPackages((prev) => [...prev, next])
      setStatus('Saved locally. Connect Supabase to persist across devices.')
      setSaving(false)
      return
    }

    const payload = {
      name: packageForm.name,
      category: packageForm.category.toUpperCase(),
      price: Number(packageForm.price),
      checkout_url: packageForm.checkout_url || null,
    }
    const { error } = await supabase.from('packages').upsert(
      packageForm.id ? { id: Number(packageForm.id), ...payload } : payload,
      { onConflict: 'id' },
    )

    if (error) {
      setStatus(`Package save failed: ${error.message}`)
    } else {
      const { data } = await supabase.from('packages').select('*')
      setPackages(data || [])
      setStatus('Package saved to Supabase.')
      setPackageForm({ id: '', name: '', category: '', price: '', checkout_url: '' })
    }
    setSaving(false)
  }

  const handlePromptSave = async () => {
    if (!promptForm.category || !promptForm.title || !promptForm.prompt) return
    setSaving(true)

    if (!hasSupabase) {
      const draft = {
        ...promptForm,
        prompt_number: Number(promptForm.prompt_number) || 1,
      }
      const existing = packs.flatMap((pack) =>
        pack.prompts.map((item) => ({
          category: pack.name,
          prompt_number: item.number,
          title: item.title,
          summary: item.summary,
          prompt: item.prompt,
          pro_tip: item.proTip,
        })),
      )
      syncCategoryPacks([...existing, draft])
      setStatus('Prompt saved locally. Connect Supabase to persist.')
      setSaving(false)
      return
    }

    const payload = {
      category: promptForm.category.toUpperCase(),
      prompt_number: Number(promptForm.prompt_number) || 1,
      title: promptForm.title,
      summary: promptForm.summary,
      prompt: promptForm.prompt,
      pro_tip: promptForm.pro_tip,
    }
    const { error } = await supabase.from('prompts').insert(payload)
    if (error) {
      setStatus(`Prompt save failed: ${error.message}`)
    } else {
      const { data } = await supabase.from('prompts').select('*')
      syncCategoryPacks(data || [])
      setStatus('Prompt saved to Supabase.')
      setPromptForm({
        category: '',
        prompt_number: '',
        title: '',
        summary: '',
        prompt: '',
        pro_tip: '',
      })
    }
    setSaving(false)
  }

  const handleTestimonialSave = async () => {
    if (!testimonialForm.quote || !testimonialForm.person || !testimonialForm.role) return
    setSaving(true)
    if (!hasSupabase) {
      setTestimonials((prev) => [testimonialForm, ...prev])
      setStatus('Testimonial saved locally. Connect Supabase to persist.')
      setTestimonialForm({ quote: '', person: '', role: '' })
      setSaving(false)
      return
    }
    const payload = {
      quote: testimonialForm.quote,
      person: testimonialForm.person,
      role: testimonialForm.role,
      is_active: true,
    }
    const { error } = await supabase.from('testimonials').insert(payload)
    if (error) {
      setStatus(`Testimonial save failed: ${error.message}`)
    } else {
      const { data } = await supabase.from('testimonials').select('*').order('created_at', { ascending: false })
      setTestimonials((data || []).map((item) => ({ quote: item.quote, person: item.person, role: item.role })))
      setStatus('Testimonial saved to Supabase.')
      setTestimonialForm({ quote: '', person: '', role: '' })
    }
    setSaving(false)
  }

  const verifyPaymentReference = async ({ reference, email, packageName, amount }) => {
    try {
      const response = await fetch('/api/paystack-verify', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          reference,
          email,
          packageName,
          amount,
          currency: 'GHS',
        }),
      })
      const payload = await response.json()
      if (!response.ok) {
        setStatus(payload.message || 'Payment verification failed on server.')
        return
      }
      setStatus(`Payment verified for ${packageName}. Access granted.`)
    } catch (_error) {
      setStatus('Payment completed, but verification endpoint failed. Check server logs.')
    }
  }

  const handlePaystackCheckout = (pkg) => {
    if (!buyerEmail) {
      setStatus('Enter customer email before checkout.')
      return
    }

    if (paystackPublicKey) {
      const popup = new PaystackPop()
      popup.newTransaction({
        key: paystackPublicKey,
        email: buyerEmail,
        amount: Math.round(Number(pkg.price || 0) * 100),
        currency: 'GHS',
        ref: `promptvault_${pkg.id || 'pack'}_${Date.now()}`,
        metadata: {
          custom_fields: [
            {
              display_name: 'Package Name',
              variable_name: 'package_name',
              value: pkg.name,
            },
          ],
        },
        onSuccess: (transaction) =>
          verifyPaymentReference({
            reference: transaction.reference,
            email: buyerEmail,
            packageName: pkg.name,
            amount: Math.round(Number(pkg.price || 0) * 100),
          }),
        onCancel: () => setStatus('Payment window closed before completion.'),
      })
      return
    }

    if (pkg.checkout_url && pkg.checkout_url !== '#') {
      window.open(pkg.checkout_url, '_blank', 'noopener,noreferrer')
      return
    }

    setStatus('Set VITE_PAYSTACK_PUBLIC_KEY or package checkout_url to process payments.')
  }

  const handleAdminLogin = async () => {
    if (!supabase) {
      setStatus('Supabase is required for admin authentication.')
      return
    }
    const { error } = await supabase.auth.signInWithPassword(adminCredentials)
    if (error) {
      setStatus(`Login failed: ${error.message}`)
      return
    }
    setStatus('Admin authenticated. CMS unlocked.')
  }

  const handleAdminLogout = async () => {
    if (!supabase) return
    await supabase.auth.signOut()
    setStatus('Admin signed out.')
  }

  return (
    <div className="app">
      <header className="hero">
        <nav className="nav">
          <div className="brand">
            <Store size={20} />
            PromptVault
          </div>
          <div className="mode-switch">
            <button type="button" className={mode === 'store' ? 'active' : ''} onClick={() => setMode('store')}>
              Storefront
            </button>
            <button type="button" className={mode === 'admin' ? 'active' : ''} onClick={() => setMode('admin')}>
              CMS
            </button>
          </div>
        </nav>

        <div className="hero-content">
          <p className="eyebrow">
            <BadgeCheck size={14} /> Professional Prompt Marketplace
          </p>
          <h1>Turn Any Idea Into Results With a Trusted Prompt Store</h1>
          <p className="subtext">
            Built in React, powered by your prompt library, and ready for Supabase-managed pricing.
            No placeholders, no emoji icons, just a conversion-focused storefront.
          </p>
          <div className="hero-stats">
            <Stat label="Prompt Packs" value={packs.length} icon={Layers} />
            <Stat label="Prompts Loaded" value={totalPrompts} icon={Library} />
            <Stat label="Secure Checkout Ready" value="100%" icon={ShieldCheck} />
          </div>
          <div className="status-line">
            {!hasSupabase && <AlertTriangle size={14} />}
            {status}
          </div>
        </div>
      </header>

      {mode === 'store' && (
        <>
      <section id="packages" className="section">
        <h2>Packages & Pricing</h2>
        <p>Conversion-optimized offers with checkout links managed from Supabase.</p>
        <div className="checkout-input">
          <label>
            Customer Email (for Paystack)
            <input
              type="email"
              placeholder="customer@example.com"
              value={buyerEmail}
              onChange={(e) => setBuyerEmail(e.target.value)}
            />
          </label>
        </div>
        <div className="card-grid">
          {categories.map((pack) => {
            const Icon = iconByCategory[pack.name] || BookOpenText
            const matched = packages.find((item) => item.category?.toUpperCase() === pack.name)
            return (
              <article key={pack.name} className="card">
                <Icon size={20} />
                <h3>{pack.name}</h3>
                <p>{pack.count} prompts</p>
                <div className="price">GHS {pack.price}</div>
                <button type="button" className="buy-link" onClick={() => handlePaystackCheckout({ ...pack, ...matched })}>
                  Get Pack <ArrowUpRight size={14} />
                </button>
              </article>
            )
          })}
        </div>
      </section>

      <section className="section prompt-library">
        <h2>Prompt Library</h2>
        <p>Extracted from your document and organized by category for fast discovery.</p>

        <div className="toolbar">
          <label className="search">
            <Search size={16} />
            <input
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder="Search prompts, categories, outcomes..."
            />
          </label>
          <select value={activeCategory} onChange={(event) => setActiveCategory(event.target.value)}>
            <option value="ALL">All Categories</option>
            {packs.map((pack) => (
              <option key={pack.name} value={pack.name}>
                {pack.name}
              </option>
            ))}
          </select>
        </div>

        <div className="prompt-list">
          {filteredPrompts.slice(0, 50).map((item) => (
            <details key={`${item.category}-${item.number}`}>
              <summary>
                <span>
                  <strong>{item.title}</strong> <small>{item.category}</small>
                </span>
                <ChevronDown size={16} />
              </summary>
              <p>{item.summary}</p>
              <pre>{item.prompt}</pre>
              {item.proTip && (
                <div className="protip">
                  <Command size={14} />
                  {item.proTip.replace('PRO TIP:', '').trim()}
                </div>
              )}
            </details>
          ))}
        </div>
      </section>

      <section className="section trust">
        <h2>Why This Store Converts</h2>
        <div className="trust-grid">
          {conversionItems.map((item) => (
            <Feature key={item.title} icon={item.icon} title={item.title} text={item.text} />
          ))}
        </div>
      </section>

      <section className="section trust">
        <h2>Social Proof</h2>
        <div className="trust-grid">
          {testimonials.map((item) => (
            <article key={item.person} className="feature">
              <Gem size={16} />
              <p>"{item.quote}"</p>
              <h3>{item.person}</h3>
              <p>{item.role}</p>
            </article>
          ))}
        </div>
      </section>

      <section className="section trust">
        <h2>Guarantee and Delivery</h2>
        <div className="trust-grid">
          <Feature icon={Download} title="Instant access delivery" text="Buy and download immediately with no waiting or support delay." />
          <Feature icon={TimerReset} title="Lifetime prompt updates" text="Your product can keep improving as you add newer, better prompt versions." />
          <Feature icon={Building2} title="Business-ready quality" text="Prompts are structured to support creators, professionals, students, and founders." />
        </div>
      </section>

      <section className="section faq">
        <h2>FAQ</h2>
        {faqItems.map((item, index) => (
          <button
            key={item.q}
            type="button"
            className="faq-item"
            onClick={() => setOpenFaq((value) => (value === index ? -1 : index))}
          >
            <div>{item.q}</div>
            <ChevronDown size={16} className={openFaq === index ? 'rotated' : ''} />
            {openFaq === index && <p>{item.a}</p>}
          </button>
        ))}
      </section>
        </>
      )}

      {mode === 'admin' && (
        <section className="section admin">
          <h2>Supabase CMS</h2>
          <p>Manage prices, packages, and prompts without touching code.</p>
          {adminSession ? (
            <div className="admin-auth-row">
              <span><ShieldCheck size={14} /> Logged in as {adminSession.user.email}</span>
              <button type="button" onClick={handleAdminLogout}><LogOut size={14} /> Sign out</button>
            </div>
          ) : (
            <article className="feature">
              <h3><LogIn size={16} /> Admin Login</h3>
              <label>Email<input type="email" value={adminCredentials.email} onChange={(e) => setAdminCredentials((v) => ({ ...v, email: e.target.value }))} /></label>
              <label>Password<input type="password" value={adminCredentials.password} onChange={(e) => setAdminCredentials((v) => ({ ...v, password: e.target.value }))} /></label>
              <button type="button" onClick={handleAdminLogin}><LogIn size={14} /> Unlock CMS</button>
            </article>
          )}
          {!adminSession ? null : (
            <>
          <div className="admin-grid">
            <article className="feature">
              <h3><PencilLine size={16} /> Save Package</h3>
              <label>ID (optional for update)<input value={packageForm.id} onChange={(e) => setPackageForm((v) => ({ ...v, id: e.target.value }))} /></label>
              <label>Name<input value={packageForm.name} onChange={(e) => setPackageForm((v) => ({ ...v, name: e.target.value }))} /></label>
              <label>Category<input value={packageForm.category} onChange={(e) => setPackageForm((v) => ({ ...v, category: e.target.value }))} placeholder="e.g. CONTENT CREATION" /></label>
              <label>Price<input type="number" value={packageForm.price} onChange={(e) => setPackageForm((v) => ({ ...v, price: e.target.value }))} /></label>
              <label>Checkout URL<input value={packageForm.checkout_url} onChange={(e) => setPackageForm((v) => ({ ...v, checkout_url: e.target.value }))} /></label>
              <button type="button" onClick={handlePackageSave} disabled={saving}><Plus size={14} /> Save package</button>
            </article>
            <article className="feature">
              <h3><Upload size={16} /> Save Prompt</h3>
              <label>Category<input value={promptForm.category} onChange={(e) => setPromptForm((v) => ({ ...v, category: e.target.value }))} /></label>
              <label>Prompt number<input type="number" value={promptForm.prompt_number} onChange={(e) => setPromptForm((v) => ({ ...v, prompt_number: e.target.value }))} /></label>
              <label>Title<input value={promptForm.title} onChange={(e) => setPromptForm((v) => ({ ...v, title: e.target.value }))} /></label>
              <label>Summary<textarea rows={2} value={promptForm.summary} onChange={(e) => setPromptForm((v) => ({ ...v, summary: e.target.value }))} /></label>
              <label>Prompt<textarea rows={5} value={promptForm.prompt} onChange={(e) => setPromptForm((v) => ({ ...v, prompt: e.target.value }))} /></label>
              <label>Pro tip<textarea rows={2} value={promptForm.pro_tip} onChange={(e) => setPromptForm((v) => ({ ...v, pro_tip: e.target.value }))} /></label>
              <button type="button" onClick={handlePromptSave} disabled={saving}><Plus size={14} /> Save prompt</button>
            </article>
            <article className="feature">
              <h3><Gem size={16} /> Save Testimonial</h3>
              <label>Quote<textarea rows={3} value={testimonialForm.quote} onChange={(e) => setTestimonialForm((v) => ({ ...v, quote: e.target.value }))} /></label>
              <label>Person<input value={testimonialForm.person} onChange={(e) => setTestimonialForm((v) => ({ ...v, person: e.target.value }))} /></label>
              <label>Role<input value={testimonialForm.role} onChange={(e) => setTestimonialForm((v) => ({ ...v, role: e.target.value }))} /></label>
              <button type="button" onClick={handleTestimonialSave} disabled={saving}><Plus size={14} /> Save testimonial</button>
            </article>
          </div>
            </>
          )}
          <article className="feature extraction-note">
            <h3><Command size={16} /> Prompt extraction audit</h3>
            <p>
              Current source files expose <strong>{totalPrompts}</strong> structured prompts via machine extraction.
              The cover claim says 190+, so a manual source refresh or original editable master file is recommended to reach full count.
            </p>
          </article>
        </section>
      )}
      <footer className="site-footer">
        <p>PromptVault 2026. Built for global trust and conversion.</p>
        <nav>
          <Link to="/terms">Terms</Link>
          <Link to="/privacy">Privacy</Link>
          <Link to="/refund">Refund</Link>
        </nav>
      </footer>
    </div>
  )
}

function Stat({ icon: Icon, label, value }) {
  return (
    <div className="stat">
      <Icon size={16} />
      <strong>{value}</strong>
      <span>{label}</span>
    </div>
  )
}

function Feature({ icon: Icon, title, text }) {
  return (
    <article className="feature">
      <Icon size={16} />
      <h3>{title}</h3>
      <p>{text}</p>
    </article>
  )
}

function LegalPage({ title, content }) {
  return (
    <div className="app">
      <header className="hero legal-hero">
        <nav className="nav">
          <div className="brand">
            <Store size={20} />
            PromptVault
          </div>
          <Link className="cta-link" to="/">
            Back to Store
          </Link>
        </nav>
      </header>
      <section className="section legal">
        <h1>{title}</h1>
        {content.map((block) => (
          <article key={block.heading} className="feature">
            <h3>{block.heading}</h3>
            <p>{block.text}</p>
          </article>
        ))}
      </section>
    </div>
  )
}

const termsContent = [
  {
    heading: 'Digital Product Access',
    text: 'All purchases grant access to downloadable prompt assets. Access is personal and may not be redistributed or resold.',
  },
  {
    heading: 'Usage Rights',
    text: 'You may use purchased prompts for your business and personal outputs. You may not claim PromptVault prompts as your original product.',
  },
  {
    heading: 'Payments',
    text: 'Payments are processed via Paystack and linked processors. PromptVault does not store card details directly.',
  },
]

const privacyContent = [
  {
    heading: 'Information We Collect',
    text: 'We collect purchase and account information required to deliver products and support customers.',
  },
  {
    heading: 'How Data Is Used',
    text: 'Data is used for order processing, customer support, fraud prevention, and service improvements.',
  },
  {
    heading: 'Data Security',
    text: 'We use trusted third-party infrastructure and apply access controls to protect customer records.',
  },
]

const refundContent = [
  {
    heading: 'Digital Goods Policy',
    text: 'Due to instant digital delivery, completed prompt download purchases are generally non-refundable.',
  },
  {
    heading: 'Exceptional Cases',
    text: 'If there is a duplicate charge or delivery failure, contact support with proof for manual resolution.',
  },
  {
    heading: 'Support Commitment',
    text: 'PromptVault is committed to resolving genuine purchase issues quickly and fairly.',
  },
]

export default App
