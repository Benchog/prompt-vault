import { useEffect, useMemo, useState } from 'react'
import {
  ArrowUpRight,
  BadgeCheck,
  Banknote,
  BriefcaseBusiness,
  ChevronDown,
  Command,
  Gem,
  GraduationCap,
  HandCoins,
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

const stripEmoji = (value = '') =>
  value.replace(/\p{Extended_Pictographic}/gu, '').replace(/\s{2,}/g, ' ').trim()

const iconByCategory = {
  'CONTENT CREATION': Video,
  BUSINESS: BriefcaseBusiness,
  STUDENTS: GraduationCap,
  'CAREER & CV': HandCoins,
  'SIDE HUSTLE': Banknote,
  'PERSONAL GROWTH': Sparkles,
}

const faqItems = [
  {
    q: 'What AI tools do these prompts work with?',
    a: 'ChatGPT, Claude, Gemini, and other major assistants.',
  },
  { q: 'How do I receive my pack after payment?', a: 'Immediately after successful checkout.' },
  { q: 'Can I use these prompts for client work?', a: 'Yes. They are structured for practical business outcomes.' },
]

const defaultPackages = [
  { id: 1, name: 'Content Creator Pack', category: 'CONTENT CREATION', price: 25, prompt_count: 40, checkout_url: '#' },
  { id: 2, name: 'Business Writing Pack', category: 'BUSINESS', price: 25, prompt_count: 30, checkout_url: '#' },
  { id: 3, name: 'Student Powerpack', category: 'STUDENTS', price: 20, prompt_count: 35, checkout_url: '#' },
  { id: 4, name: 'Career & CV Pack', category: 'CAREER & CV', price: 25, prompt_count: 28, checkout_url: '#' },
  { id: 5, name: 'Side Hustle Starter', category: 'SIDE HUSTLE', price: 25, prompt_count: 32, checkout_url: '#' },
  { id: 6, name: 'Personal Growth Pack', category: 'PERSONAL GROWTH', price: 20, prompt_count: 25, checkout_url: '#' },
]

const normalizeLibrary = () =>
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

function useCatalog() {
  const [packages, setPackages] = useState(defaultPackages)
  const [packs, setPacks] = useState(normalizeLibrary())
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
    if (remoteTestimonials?.length) {
      setTestimonials(remoteTestimonials.map((item) => ({ quote: item.quote, person: item.person, role: item.role })))
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
      setPacks(Object.entries(grouped).map(([name, prompts], index) => ({ id: index + 1, name, prompts })))
    }
  }

  useEffect(() => {
    loadCatalog()
  }, [])

  return { packages, packs, testimonials, loadCatalog }
}

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

function StorePage() {
  const { packages, packs, testimonials } = useCatalog()
  const [buyerEmail, setBuyerEmail] = useState('')
  const [status, setStatus] = useState('')
  const [openFaq, setOpenFaq] = useState(0)
  const [query, setQuery] = useState('')
  const [activeCategory, setActiveCategory] = useState('ALL')

  const totalPrompts = packs.reduce((sum, pack) => sum + pack.prompts.length, 0)
  const categories = packs.map((pack) => ({
    ...pack,
    count: pack.prompts.length,
    price: packages.find((pkg) => pkg.category?.toUpperCase() === pack.name)?.price ?? 25,
    checkout_url: packages.find((pkg) => pkg.category?.toUpperCase() === pack.name)?.checkout_url ?? '#',
  }))

  const filteredPrompts = useMemo(() => {
    const rows = packs.flatMap((pack) => pack.prompts.map((prompt) => ({ ...prompt, category: pack.name })))
    return rows.filter((item) => {
      const categoryOk = activeCategory === 'ALL' || item.category === activeCategory
      const t = query.trim().toLowerCase()
      if (!t) return categoryOk
      return categoryOk && [item.title, item.summary, item.category, item.prompt].join(' ').toLowerCase().includes(t)
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
      setStatus(response.ok ? `Payment verified for ${packageName}.` : payload.message || 'Payment verification failed.')
    } catch {
      setStatus('Payment completed, but verification endpoint failed.')
    }
  }

  const handleCheckout = (pack) => {
    if (!buyerEmail) return setStatus('Please enter your email before checkout.')

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

    if (pack.checkout_url && pack.checkout_url !== '#') {
      window.open(pack.checkout_url, '_blank', 'noopener,noreferrer')
    }
  }

  return (
    <div className="store">
      <nav className="nav">
        <a href="#" className="logo">Prompt<span>Vault</span></a>
        <ul>
          <li><a href="#categories">Categories</a></li>
          <li><a href="#packs">Packs</a></li>
          <li><a href="#library">Library</a></li>
          <li><a href="#faq">FAQ</a></li>
          <li><a href="#packs" className="nav-cta">Browse Packs</a></li>
        </ul>
      </nav>

      <section className="hero">
        <div className="hero-bg" />
        <div className="hero-eyebrow">The AI Prompt Store</div>
        <h1>Stop Wasting Time. <em>Start Getting Results.</em></h1>
        <p className="hero-sub">
          Premium, tested prompts that transform AI into a real productivity engine for business,
          creators, students, and ambitious professionals.
        </p>
        <div className="hero-actions">
          <a href="#packs" className="btn-primary">Browse Prompt Packs</a>
          <a href="#library" className="btn-ghost">Explore Library</a>
        </div>
        <div className="hero-stats">
          <div><div className="stat-num">{totalPrompts}+</div><div className="stat-label">Prompts Available</div></div>
          <div><div className="stat-num">{packs.length}</div><div className="stat-label">Categories</div></div>
          <div><div className="stat-num">100%</div><div className="stat-label">Instant Delivery</div></div>
        </div>
      </section>

      <div className="marquee-wrap">
        <div className="marquee-track">
          {['Business Writing', 'Student Packs', 'Content Creation', 'Career Growth', 'Side Hustle', 'Personal Growth', 'Business Writing', 'Student Packs'].map((item, idx) => (
            <div key={`${item}-${idx}`} className="marquee-item">{item}</div>
          ))}
        </div>
      </div>

      <section id="categories">
        <div className="section-tag">What We Cover</div>
        <h2 className="section-title">Every Category You Need</h2>
        <p className="section-sub">Choose a category and get battle-tested prompts ready for immediate use.</p>
        <div className="categories-grid">
          {categories.map((cat) => {
            const Icon = iconByCategory[cat.name] || Command
            return (
              <a href="#packs" key={cat.name} className="cat-card">
                <span className="cat-icon"><Icon size={30} /></span>
                <div className="cat-name">{cat.name}</div>
                <div className="cat-desc">Professional prompt collection engineered for real outcomes.</div>
                <div className="cat-footer">
                  <span className="cat-count">{cat.count} Prompts</span>
                  <span className="cat-arrow"><ArrowUpRight size={16} /></span>
                </div>
              </a>
            )
          })}
        </div>
      </section>

      <section id="packs">
        <div className="section-tag">Featured Packs</div>
        <h2 className="section-title">Pick Your Pack</h2>
        <p className="section-sub">Secure payment with Paystack. Enter buyer email once and checkout quickly.</p>
        <label className="email-label">
          Customer Email
          <input className="email-input" value={buyerEmail} onChange={(e) => setBuyerEmail(e.target.value)} placeholder="customer@email.com" />
        </label>
        <div className="packs-grid">
          {categories.map((pack, idx) => {
            const Icon = iconByCategory[pack.name] || Command
            return (
              <div key={pack.name} className={`pack-card ${idx === 0 ? 'featured' : ''}`}>
                {idx === 0 ? <span className="pack-badge">Best Seller</span> : null}
                <div className="pack-header">
                  <span className="pack-icon"><Icon size={28} /></span>
                  <div className="pack-name">{pack.name}</div>
                  <div className="pack-tagline">A premium set of prompts designed to save time and improve output quality.</div>
                </div>
                <div className="pack-body">
                  <ul className="pack-includes">
                    {(pack.prompts || []).slice(0, 5).map((prompt) => (
                      <li key={`${pack.name}-${prompt.number}`}>{prompt.title}</li>
                    ))}
                  </ul>
                </div>
                <div className="pack-footer">
                  <div className="pack-price">GHS {pack.price} <span>/ pack</span></div>
                  <button className="btn-buy" type="button" onClick={() => handleCheckout(pack)}>Get Pack</button>
                </div>
              </div>
            )
          })}
        </div>
        {status ? <p className="status-line">{status}</p> : null}
      </section>

      <section id="library">
        <div className="section-tag">Prompt Explorer</div>
        <h2 className="section-title">Prompt Library</h2>
        <p className="section-sub">Search and inspect the loaded prompt catalog quickly.</p>
        <div className="library-controls">
          <label className="search-wrap"><Search size={16} /><input value={query} onChange={(e) => setQuery(e.target.value)} placeholder="Search prompts..." /></label>
          <select value={activeCategory} onChange={(e) => setActiveCategory(e.target.value)}>
            <option value="ALL">All Categories</option>
            {packs.map((pack) => <option key={pack.name} value={pack.name}>{pack.name}</option>)}
          </select>
        </div>
        <div className="library-list">
          {filteredPrompts.slice(0, 36).map((item) => (
            <details key={`${item.category}-${item.number}`} className="library-item">
              <summary>{item.title} <small>{item.category}</small> <ChevronDown size={14} /></summary>
              <p>{item.summary}</p>
              <pre>{item.prompt}</pre>
            </details>
          ))}
        </div>
      </section>

      <section id="reviews">
        <div className="section-tag">Social Proof</div>
        <h2 className="section-title">What People Are Saying</h2>
        <div className="reviews-grid">
          {testimonials.map((t) => (
            <div className="review-card" key={`${t.person}-${t.role}`}>
              <div className="review-stars"><Gem size={14} /> Trusted Result</div>
              <div className="review-text">"{t.quote}"</div>
              <div className="reviewer-name">{t.person}</div>
              <div className="reviewer-role">{t.role}</div>
            </div>
          ))}
        </div>
      </section>

      <section id="faq">
        <div className="section-tag">Questions</div>
        <h2 className="section-title">FAQ</h2>
        <div className="faq-list">
          {faqItems.map((item, idx) => (
            <button key={item.q} className="faq-item" type="button" onClick={() => setOpenFaq(openFaq === idx ? -1 : idx)}>
              <span>{item.q}</span>
              {openFaq === idx ? <p>{item.a}</p> : null}
            </button>
          ))}
        </div>
      </section>

      <div className="final-cta">
        <h2>Your Time Is <span>Worth More</span> Than Bad Prompts.</h2>
        <p>Pick your pack, pay securely, and start producing premium outputs today.</p>
        <a href="#packs" className="btn-primary">Browse All Packs</a>
      </div>
    </div>
  )
}

function AdminPage() {
  const { loadCatalog } = useCatalog()
  const [session, setSession] = useState(null)
  const [status, setStatus] = useState('')
  const [saving, setSaving] = useState(false)
  const [credentials, setCredentials] = useState({ email: '', password: '' })
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
    setStatus(error ? error.message : 'Authenticated.')
  }
  const logout = async () => supabase && supabase.auth.signOut()

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
    <div className="admin">
      <main className="admin-wrap">
        <div className="admin-top">
          <h1>Owner Console</h1>
          <Link to="/">Back to Store</Link>
        </div>
        {!session ? (
          <article className="admin-card">
            <h3><LogIn size={16} /> Admin Login</h3>
            <label>Email<input value={credentials.email} onChange={(e) => setCredentials((v) => ({ ...v, email: e.target.value }))} /></label>
            <label>Password<input type="password" value={credentials.password} onChange={(e) => setCredentials((v) => ({ ...v, password: e.target.value }))} /></label>
            <button onClick={login} className="admin-btn" type="button">Unlock CMS</button>
          </article>
        ) : !isOwner ? (
          <article className="admin-card">
            <h3>Access denied</h3>
            <p>Logged in as {session.user.email}. This account is not configured as owner.</p>
            <button className="admin-btn" type="button" onClick={logout}><LogOut size={14} /> Sign out</button>
          </article>
        ) : (
          <div className="admin-grid">
            <article className="admin-card">
              <h3><PencilLine size={16} /> Save Package</h3>
              <label>ID<input value={packageForm.id} onChange={(e) => setPackageForm((v) => ({ ...v, id: e.target.value }))} /></label>
              <label>Name<input value={packageForm.name} onChange={(e) => setPackageForm((v) => ({ ...v, name: e.target.value }))} /></label>
              <label>Category<input value={packageForm.category} onChange={(e) => setPackageForm((v) => ({ ...v, category: e.target.value }))} /></label>
              <label>Price<input value={packageForm.price} onChange={(e) => setPackageForm((v) => ({ ...v, price: e.target.value }))} /></label>
              <label>Checkout URL<input value={packageForm.checkout_url} onChange={(e) => setPackageForm((v) => ({ ...v, checkout_url: e.target.value }))} /></label>
              <button className="admin-btn" type="button" onClick={savePackage} disabled={saving}><Plus size={14} /> Save package</button>
            </article>
            <article className="admin-card">
              <h3><Upload size={16} /> Save Prompt</h3>
              <label>Category<input value={promptForm.category} onChange={(e) => setPromptForm((v) => ({ ...v, category: e.target.value }))} /></label>
              <label>Prompt number<input value={promptForm.prompt_number} onChange={(e) => setPromptForm((v) => ({ ...v, prompt_number: e.target.value }))} /></label>
              <label>Title<input value={promptForm.title} onChange={(e) => setPromptForm((v) => ({ ...v, title: e.target.value }))} /></label>
              <label>Summary<textarea rows={2} value={promptForm.summary} onChange={(e) => setPromptForm((v) => ({ ...v, summary: e.target.value }))} /></label>
              <label>Prompt<textarea rows={5} value={promptForm.prompt} onChange={(e) => setPromptForm((v) => ({ ...v, prompt: e.target.value }))} /></label>
              <label>Pro tip<textarea rows={2} value={promptForm.pro_tip} onChange={(e) => setPromptForm((v) => ({ ...v, pro_tip: e.target.value }))} /></label>
              <button className="admin-btn" type="button" onClick={savePrompt} disabled={saving}><Plus size={14} /> Save prompt</button>
            </article>
            <article className="admin-card">
              <h3><Gem size={16} /> Save Testimonial</h3>
              <label>Quote<textarea rows={3} value={testimonialForm.quote} onChange={(e) => setTestimonialForm((v) => ({ ...v, quote: e.target.value }))} /></label>
              <label>Person<input value={testimonialForm.person} onChange={(e) => setTestimonialForm((v) => ({ ...v, person: e.target.value }))} /></label>
              <label>Role<input value={testimonialForm.role} onChange={(e) => setTestimonialForm((v) => ({ ...v, role: e.target.value }))} /></label>
              <button className="admin-btn" type="button" onClick={saveTestimonial} disabled={saving}><Plus size={14} /> Save testimonial</button>
            </article>
          </div>
        )}
        {status ? <p className="admin-status">{status}</p> : null}
      </main>
    </div>
  )
}

export default App
