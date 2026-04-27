# PromptVault React Storefront

Production-ready React storefront for your prompt marketplace with:
- Lucide icon system (no emoji icon UI)
- Prompt library extracted from your document
- Searchable prompt explorer
- Supabase-ready package, pricing, and prompt CMS
- Built-in CMS screen for non-technical updates
- Paystack checkout support
- Paystack server verification + webhook ingestion

## Run locally

```bash
npm install
npm run dev
```

## Supabase setup

1. Run the SQL in `supabase-schema.sql` in your Supabase SQL editor.
2. Copy `.env.example` to `.env`.
3. Fill in `VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY`.
4. Add `VITE_PAYSTACK_PUBLIC_KEY`.
5. Add server env vars: `PAYSTACK_SECRET_KEY`, `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`.
6. Add/update rows in `packages` and `prompts`.
7. Optional: run `supabase-seed.sql` to preload extracted prompts.
8. Optional: add testimonials rows in `testimonials`.

When Supabase credentials are present, the app reads live package and prompt data from your tables.  
If not, it falls back to bundled local data so the site still works.

## Regenerate seed SQL

```bash
python scripts/generate_seed.py
```

This generates `supabase-seed.sql` from `src/data/prompt-library.json`.

## Admin CMS Authentication

- CMS mode is locked behind Supabase Auth sign-in.
- Create an admin user in Supabase Authentication.
- Use that login in the CMS tab to unlock package and prompt editing.

## Payment setup (Paystack)

- Set `VITE_PAYSTACK_PUBLIC_KEY` in `.env`.
- On the storefront, buyer enters email and clicks `Get Pack`.
- If Paystack key is present, payment opens in Paystack popup.
- If not present, package `checkout_url` is used as fallback.

### Server-side payment security

- `POST /api/paystack-verify` validates payment references with Paystack and writes to `payment_events`.
- `POST /api/paystack-webhook` verifies Paystack webhook signatures and stores webhook events.
- In Paystack dashboard set webhook URL to:
  - `https://your-domain.com/api/paystack-webhook`

## Deploy

- Vercel config included: `vercel.json`
- Netlify config included: `netlify.toml`
- Both support SPA route rewrites.

## GitHub then Vercel go-live

1. Create a new GitHub repository.
2. From project root:
   - `git init`
   - `git add .`
   - `git commit -m "Launch PromptVault React storefront"`
   - `git branch -M main`
   - `git remote add origin <your-github-repo-url>`
   - `git push -u origin main`
3. In Vercel:
   - Import GitHub repo
   - Framework preset: Vite
   - Build command: `npm run build`
   - Output dir: `dist`
4. Add all env vars in Vercel Project Settings.
5. Redeploy and test checkout + webhook.
