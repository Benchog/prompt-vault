import { useEffect, useMemo, useState } from 'react'
import {
  ArrowUpRight,
  BadgeCheck,
  Banknote,
  Bot,
  BriefcaseBusiness,
  ChevronDown,
  Command,
  Crown,
  Diamond,
  Gem,
  GraduationCap,
  HandCoins,
  Layers,
  Library,
  LogIn,
  LogOut,
  PencilLine,
  Plus,
  Search,
  ShieldCheck,
  Sparkles,
  Store,
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
const ownerEmail = import.meta.env.VITE_OWNER_EMAIL
const supabase = supabaseUrl && supabaseAnon ? createClient(supabaseUrl, supabaseAnon) : null

const icons = {
  'CONTENT CREATION': Video,
  BUSINESS: BriefcaseBusiness,
  STUDENTS: GraduationCap,
  'CAREER & CV': HandCoins,
  'SIDE HUSTLE': Banknote,
  'PERSONAL GROWTH': Sparkles,
}

const faq = [
  {
    q: 'What AI tools do these prompts support?',
    a: 'They are designed for ChatGPT, Claude, Gemini, and major AI assistants.',
  },
  {
    q: 'How fast do I get access?',
    a: 'Immediately after successful payment.',
  },
  {
    q: 'Can I use them for client work?',
    a: 'Yes. They are built for practical professional outcomes.',
  },
]

const highlights = [
  { icon: Crown, title: 'Premium Prompt Engineering', text: 'Each prompt is structured for real-world outcomes, not generic AI noise.' },
  { icon: Diamond, title: 'Instant Business Utility', text: 'Use these for content, offers, client delivery, and strategic communication immediately.' },
  { icon: Bot, title: 'Built For Leading AI Models', text: 'Optimized for ChatGPT, Claude, Gemini, and modern assistant workflows.' },
]

const stripEmoji = (value = '') =>
  value.replace(/\p{Extended_Pictographic}/gu, '').replace(/\s{2,}/g, ' ').trim()

const normalizePacks = () =>
  promptLibrary.packs.map((pack) => ({
    ...pack,
    name: pack.name.toUpperCase(),
    prompts: pack.prompts.map((prompt) => ({
      ...prompt,
      title: stripEmoji(prompt.title),
      summary: stripEmoji(prompt.summary),
      prompt: stripEmoji(prompt.prompt),
      proTip: stripEmoji(prompt.proTip),
    })),
  }))

const defaultPackages = [
  { id: 1, name: 'Content Creator Pack', category: 'CONTENT CREATION', price: 25, prompt_count: 40, checkout_url: '#' },
  { id: 2, name: 'Business Writing Pack', category: 'BUSINESS', price: 25, prompt_count: 30, checkout_url: '#' },
  { id: 3, name: 'Student Powerpack', category: 'STUDENTS', price: 20, prompt_count: 35, checkout_url: '#' },
  { id: 4, name: 'Career & CV Pack', category: 'CAREER & CV', price: 25, prompt_count: 28, checkout_url: '#' },
  { id: 5, name: 'Side Hustle Starter', category: 'SIDE HUSTLE', price: 25, prompt_count: 32, checkout_url: '#' },
  { id: 6, name: 'Personal Growth Pack', category: 'PERSONAL GROWTH', price: 20, prompt_count: 25, checkout_url: '#' },
]

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<StorePage />} />
        <Route path="/admin" element={<AdminPage />} />
      </Routes>
    </BrowserRouter>
  )
}

function useCatalog() {
  const [packages, setPackages] = useState(defaultPackages)
  const [packs, setPacks] = useState(normalizePacks())
  const [testimonials, setTestimonials] = useState([
    { quote: 'These prompts saved my team hours every day.', person: 'Esi K.', role: 'Marketing Lead' },
    { quote: 'My content output became consistent and premium.', person: 'Nana A.', role: 'Creator' },
    { quote: 'The business pack improved my client communication instantly.', person: 'Michael T.', role: 'Founder' },
  ])

  const loadCatalog = async () => {
    if (!supabase) return
    const [{ data: remotePackages }, { data: remotePrompts }, { data: remoteTestimonials }] =
      await Promise.all([
        supabase.from('packages').select('*').order('created_at', { ascending: true }),
        supabase.from('prompts').select('*').order('prompt_number', { ascending: true }),
        supabase.from('testimonials').select('*').eq('is_active', true).order('created_at', { ascending: false }),
      ])

    if (remotePackages?.length) setPackages(remotePackages)

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

  useEffect(() => {
    loadCatalog()
  }, [])

  return { packages, packs, testimonials, setPackages, setPacks, setTestimonials, loadCatalog }
}

function StorePage() {
  const { packages, packs, testimonials } = useCatalog()
  const [query, setQuery] = useState('')
  const [activeCategory, setActiveCategory] = useState('ALL')
  const [openFaq, setOpenFaq] = useState(0)
  const [buyerEmail, setBuyerEmail] = useState('')
  const [status, setStatus] = useState('')

  useEffect(() => {
    const nodes = document.querySelectorAll('.reveal')
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.add('visible')
            observer.unobserve(entry.target)
          }
        })
      },
      { threshold: 0.12 },
    )
    nodes.forEach((node) => observer.observe(node))
    return () => observer.disconnect()
  }, [])

  const totalPrompts = packs.reduce((acc, pack) => acc + pack.prompts.length, 0)
  const categories = packs.map((pack) => ({
    ...pack,
    count: pack.prompts.length,
    price: packages.find((item) => item.category?.toUpperCase() === pack.name)?.price ?? 25,
  }))

  const filteredPrompts = useMemo(() => {
    const rows = packs.flatMap((pack) => pack.prompts.map((prompt) => ({ ...prompt, category: pack.name })))
    return rows.filter((item) => {
      const byCategory = activeCategory === 'ALL' || item.category === activeCategory
      const t = query.trim().toLowerCase()
      if (!t) return byCategory
      return byCategory && [item.title, item.summary, item.prompt, item.category].join(' ').toLowerCase().includes(t)
    })
  }, [activeCategory, packs, query])

  const verifyPaymentReference = async ({ reference, email, packageName, amount }) => {
    try {
      const response = await fetch('/api/paystack-verify', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ reference, email, packageName, amount, currency: 'GHS' }),
      })
      const payload = await response.json()
      setStatus(response.ok ? `Payment verified for ${packageName}.` : payload.message || 'Verification failed.')
    } catch {
      setStatus('Payment completed, but verification endpoint failed.')
    }
  }

  const handleCheckout = (pack) => {
    if (!buyerEmail) {
      setStatus('Please enter your email before checkout.')
      return
    }

    if (paystackPublicKey) {
      const popup = new PaystackPop()
      popup.newTransaction({
        key: paystackPublicKey,
        email: buyerEmail,
        amount: Math.round(Number(pack.price || 0) * 100),
        currency: 'GHS',
        ref: `promptvault_${pack.id || 'pack'}_${Date.now()}`,
        metadata: {
          custom_fields: [{ display_name: 'Package', variable_name: 'package_name', value: pack.name }],
        },
        onSuccess: (transaction) =>
          verifyPaymentReference({
            reference: transaction.reference,
            email: buyerEmail,
            packageName: pack.name,
            amount: Math.round(Number(pack.price || 0) * 100),
          }),
      })
      return
    }

    if (pack.checkout_url && pack.checkout_url !== '#') window.open(pack.checkout_url, '_blank', 'noopener,noreferrer')
  }

  return (
    <div className="site">
      <header className="hero">
        <div className="hero-overlay" />
        <nav className="nav container">
          <div className="brand"><Store size={18} /> PromptVault</div>
          <a className="btn-nav" href="#packages">Browse Packs</a>
        </nav>
        <div className="container hero-body reveal">
          <p className="eyebrow"><BadgeCheck size={14} /> Trusted Premium Prompt Marketplace</p>
          <h1>High-Converting AI Prompt Packs For People Who Refuse Average Results</h1>
          <p className="hero-sub">A world-class storefront crafted for instant trust, rapid action, and premium buying confidence from the first scroll.</p>
          <div className="hero-actions">
            <a href="#packages" className="btn-nav">Shop Prompt Packs</a>
            <a href="#library" className="btn-ghost">Explore Library</a>
          </div>
          <div className="stats">
            <Stat label="Prompt Packs" value={packs.length} icon={Layers} />
            <Stat label="Prompts Ready" value={totalPrompts} icon={Library} />
            <Stat label="Secure Checkout" value="Paystack" icon={ShieldCheck} />
          </div>
        </div>
      </header>

      <section className="marquee">
        <div className="marquee-track">
          <span>BUSINESS WRITING</span><span>CONTENT CREATION</span><span>STUDENT POWER</span>
          <span>CAREER GROWTH</span><span>SIDE HUSTLE</span><span>PERSONAL GROWTH</span>
          <span>BUSINESS WRITING</span><span>CONTENT CREATION</span><span>STUDENT POWER</span>
        </div>
      </section>

      <main className="container main-content">
        <section className="section reveal section-luxe">
          <div className="section-head">
            <h2>Why PromptVault Wins Attention Instantly</h2>
            <p>Built with premium visual structure, persuasive positioning, and clear offer hierarchy.</p>
          </div>
          <div className="grid cards highlight-cards">
            {highlights.map((item) => (
              <article className="card" key={item.title}>
                <item.icon size={18} />
                <h3>{item.title}</h3>
                <p>{item.text}</p>
              </article>
            ))}
          </div>
        </section>

        <section id="packages" className="section reveal section-luxe">
          <div className="section-head">
            <h2>Packages & Pricing</h2>
            <p>Premium offers with clean value communication and instant checkout flow.</p>
          </div>
          <label className="email-input">
            Customer Email
            <input value={buyerEmail} onChange={(e) => setBuyerEmail(e.target.value)} placeholder="customer@email.com" />
          </label>
          <div className="grid cards">
            {categories.map((pack) => {
              const Icon = icons[pack.name] || Command
              const tier =
                pack.count >= 35 ? 'Signature Tier' : pack.count >= 28 ? 'Professional Tier' : 'Essential Tier'
              return (
                <article className="card" key={pack.name}>
                  <div className="tier-badge">{tier}</div>
                  <Icon size={18} />
                  <h3>{pack.name}</h3>
                  <p>{pack.count} prompts included</p>
                  <div className="price">GHS {pack.price}</div>
                  <button className="btn-gold" type="button" onClick={() => handleCheckout(pack)}>
                    Get Pack <ArrowUpRight size={14} />
                  </button>
                </article>
              )
            })}
          </div>
          {status && <p className="status">{status}</p>}
        </section>

        <section id="library" className="section reveal section-luxe">
          <div className="section-head">
            <h2>Prompt Library</h2>
            <p>Search your loaded prompt catalog instantly.</p>
          </div>
          <div className="toolbar">
            <label className="search"><Search size={16} /><input value={query} onChange={(e) => setQuery(e.target.value)} placeholder="Search prompts..." /></label>
            <select value={activeCategory} onChange={(e) => setActiveCategory(e.target.value)}>
              <option value="ALL">All Categories</option>
              {packs.map((pack) => <option key={pack.name} value={pack.name}>{pack.name}</option>)}
            </select>
          </div>
          <div className="prompt-list">
            {filteredPrompts.slice(0, 40).map((item) => (
              <details key={`${item.category}-${item.number}`} className="prompt-item">
                <summary><span>{item.title} <small>{item.category}</small></span><ChevronDown size={16} /></summary>
                <p>{item.summary}</p>
                <pre>{item.prompt}</pre>
              </details>
            ))}
          </div>
        </section>

        <section className="section reveal section-luxe">
          <div className="section-head">
            <h2>What Buyers Say</h2>
          </div>
          <div className="grid testimonials">
            {testimonials.map((t) => (
              <article className="card" key={`${t.person}-${t.role}`}>
                <Gem size={16} />
                <p>"{t.quote}"</p>
                <h3>{t.person}</h3>
                <small>{t.role}</small>
              </article>
            ))}
          </div>
        </section>

        <section className="section reveal section-luxe">
          <div className="section-head"><h2>FAQ</h2></div>
          {faq.map((item, index) => (
            <button key={item.q} className="faq-item" type="button" onClick={() => setOpenFaq(openFaq === index ? -1 : index)}>
              <div>{item.q}</div>
              {openFaq === index && <p>{item.a}</p>}
            </button>
          ))}
        </section>

        <section className="section final-cta reveal">
          <h2>Ready To Turn AI Into Your Competitive Advantage?</h2>
          <p>Choose your pack, check out securely, and start delivering premium results in minutes, not weeks.</p>
          <a href="#packages" className="btn-nav">Get Started Now</a>
        </section>
      </main>
    </div>
  )
}

function AdminPage() {
  const { loadCatalog } = useCatalog()
  const [session, setSession] = useState(null)
  const [credentials, setCredentials] = useState({ email: '', password: '' })
  const [status, setStatus] = useState('')
  const [saving, setSaving] = useState(false)
  const [packageForm, setPackageForm] = useState({ id: '', name: '', category: '', price: '', checkout_url: '' })
  const [promptForm, setPromptForm] = useState({ category: '', prompt_number: '', title: '', summary: '', prompt: '', pro_tip: '' })
  const [testimonialForm, setTestimonialForm] = useState({ quote: '', person: '', role: '' })

  useEffect(() => {
    if (!supabase) return
    supabase.auth.getSession().then(({ data }) => setSession(data.session))
    const { data: listener } = supabase.auth.onAuthStateChange((_e, s) => setSession(s))
    return () => listener.subscription.unsubscribe()
  }, [])

  const isOwner = session?.user?.email && ownerEmail && session.user.email.toLowerCase() === ownerEmail.toLowerCase()

  const login = async () => {
    if (!supabase) return setStatus('Configure Supabase first.')
    const { error } = await supabase.auth.signInWithPassword(credentials)
    if (error) return setStatus(error.message)
    setStatus('Authenticated.')
  }

  const logout = async () => {
    if (supabase) await supabase.auth.signOut()
  }

  const savePackage = async () => {
    if (!isOwner || !supabase) return
    setSaving(true)
    const payload = { name: packageForm.name, category: packageForm.category.toUpperCase(), price: Number(packageForm.price), checkout_url: packageForm.checkout_url || null }
    const { error } = await supabase.from('packages').upsert(packageForm.id ? { id: Number(packageForm.id), ...payload } : payload, { onConflict: 'id' })
    setStatus(error ? error.message : 'Package saved.')
    setSaving(false)
    loadCatalog()
  }

  const savePrompt = async () => {
    if (!isOwner || !supabase) return
    setSaving(true)
    const payload = { category: promptForm.category.toUpperCase(), prompt_number: Number(promptForm.prompt_number), title: promptForm.title, summary: promptForm.summary, prompt: promptForm.prompt, pro_tip: promptForm.pro_tip }
    const { error } = await supabase.from('prompts').insert(payload)
    setStatus(error ? error.message : 'Prompt saved.')
    setSaving(false)
    loadCatalog()
  }

  const saveTestimonial = async () => {
    if (!isOwner || !supabase) return
    setSaving(true)
    const { error } = await supabase.from('testimonials').insert({ ...testimonialForm, is_active: true })
    setStatus(error ? error.message : 'Testimonial saved.')
    setSaving(false)
    loadCatalog()
  }

  return (
    <div className="site admin-site">
      <main className="container admin-wrap">
        <div className="admin-top">
          <h1>Owner Console</h1>
          <div className="admin-links"><Link to="/">Store</Link></div>
        </div>

        {!session ? (
          <article className="card admin-card">
            <h3><LogIn size={16} /> Admin Login</h3>
            <label>Email<input value={credentials.email} onChange={(e) => setCredentials((v) => ({ ...v, email: e.target.value }))} /></label>
            <label>Password<input type="password" value={credentials.password} onChange={(e) => setCredentials((v) => ({ ...v, password: e.target.value }))} /></label>
            <button className="btn-gold" type="button" onClick={login}>Unlock CMS</button>
          </article>
        ) : !isOwner ? (
          <article className="card admin-card">
            <h3>Access denied</h3>
            <p>Logged in as {session.user.email}. This account is not configured as owner.</p>
            <button className="btn-gold" type="button" onClick={logout}><LogOut size={14} /> Sign out</button>
          </article>
        ) : (
          <div className="admin-grid">
            <article className="card admin-card">
              <h3><PencilLine size={16} /> Save Package</h3>
              <label>ID<input value={packageForm.id} onChange={(e) => setPackageForm((v) => ({ ...v, id: e.target.value }))} /></label>
              <label>Name<input value={packageForm.name} onChange={(e) => setPackageForm((v) => ({ ...v, name: e.target.value }))} /></label>
              <label>Category<input value={packageForm.category} onChange={(e) => setPackageForm((v) => ({ ...v, category: e.target.value }))} /></label>
              <label>Price<input value={packageForm.price} onChange={(e) => setPackageForm((v) => ({ ...v, price: e.target.value }))} /></label>
              <label>Checkout URL<input value={packageForm.checkout_url} onChange={(e) => setPackageForm((v) => ({ ...v, checkout_url: e.target.value }))} /></label>
              <button className="btn-gold" type="button" onClick={savePackage} disabled={saving}><Plus size={14} /> Save package</button>
            </article>

            <article className="card admin-card">
              <h3><Upload size={16} /> Save Prompt</h3>
              <label>Category<input value={promptForm.category} onChange={(e) => setPromptForm((v) => ({ ...v, category: e.target.value }))} /></label>
              <label>Prompt number<input value={promptForm.prompt_number} onChange={(e) => setPromptForm((v) => ({ ...v, prompt_number: e.target.value }))} /></label>
              <label>Title<input value={promptForm.title} onChange={(e) => setPromptForm((v) => ({ ...v, title: e.target.value }))} /></label>
              <label>Summary<textarea rows={2} value={promptForm.summary} onChange={(e) => setPromptForm((v) => ({ ...v, summary: e.target.value }))} /></label>
              <label>Prompt<textarea rows={5} value={promptForm.prompt} onChange={(e) => setPromptForm((v) => ({ ...v, prompt: e.target.value }))} /></label>
              <label>Pro tip<textarea rows={2} value={promptForm.pro_tip} onChange={(e) => setPromptForm((v) => ({ ...v, pro_tip: e.target.value }))} /></label>
              <button className="btn-gold" type="button" onClick={savePrompt} disabled={saving}><Plus size={14} /> Save prompt</button>
            </article>

            <article className="card admin-card">
              <h3><Gem size={16} /> Save Testimonial</h3>
              <label>Quote<textarea rows={3} value={testimonialForm.quote} onChange={(e) => setTestimonialForm((v) => ({ ...v, quote: e.target.value }))} /></label>
              <label>Person<input value={testimonialForm.person} onChange={(e) => setTestimonialForm((v) => ({ ...v, person: e.target.value }))} /></label>
              <label>Role<input value={testimonialForm.role} onChange={(e) => setTestimonialForm((v) => ({ ...v, role: e.target.value }))} /></label>
              <button className="btn-gold" type="button" onClick={saveTestimonial} disabled={saving}><Plus size={14} /> Save testimonial</button>
            </article>
          </div>
        )}
        {status && <p className="status">{status}</p>}
      </main>
    </div>
  )
}

function Stat({ label, value, icon: Icon }) {
  return (
    <div className="stat">
      <Icon size={16} />
      <strong>{value}</strong>
      <span>{label}</span>
    </div>
  )
}

export default App
