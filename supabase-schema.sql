create table if not exists packages (
  id bigint generated always as identity primary key,
  name text not null,
  category text not null,
  price numeric(10,2) not null,
  prompt_count int default 0,
  checkout_url text,
  created_at timestamptz default now()
);

create table if not exists prompts (
  id bigint generated always as identity primary key,
  package_id bigint references packages(id) on delete cascade,
  category text not null,
  prompt_number int not null,
  title text not null,
  summary text not null,
  prompt text not null,
  pro_tip text,
  created_at timestamptz default now()
);

create table if not exists testimonials (
  id bigint generated always as identity primary key,
  quote text not null,
  person text not null,
  role text not null,
  is_active boolean default true,
  created_at timestamptz default now()
);

create table if not exists payment_events (
  id bigint generated always as identity primary key,
  reference text not null unique,
  email text,
  package_name text,
  amount bigint,
  currency text default 'GHS',
  status text,
  gateway_response text,
  paid_at timestamptz,
  raw_payload jsonb,
  created_at timestamptz default now()
);

create table if not exists payment_webhooks (
  id bigint generated always as identity primary key,
  event_type text,
  reference text,
  raw_payload jsonb,
  created_at timestamptz default now()
);

create index if not exists prompts_category_idx on prompts(category);
create index if not exists prompts_number_idx on prompts(prompt_number);
create index if not exists payment_events_ref_idx on payment_events(reference);

alter table packages enable row level security;
alter table prompts enable row level security;
alter table testimonials enable row level security;
alter table payment_events enable row level security;
alter table payment_webhooks enable row level security;

drop policy if exists "Public read packages" on packages;
drop policy if exists "Public read prompts" on prompts;
drop policy if exists "Authenticated write packages" on packages;
drop policy if exists "Authenticated write prompts" on prompts;
drop policy if exists "Public read testimonials" on testimonials;
drop policy if exists "Authenticated write testimonials" on testimonials;
drop policy if exists "Authenticated read payments" on payment_events;
drop policy if exists "Service write payments" on payment_events;
drop policy if exists "Authenticated read webhooks" on payment_webhooks;
drop policy if exists "Service write webhooks" on payment_webhooks;

create policy "Public read packages"
on packages for select using (true);

create policy "Public read prompts"
on prompts for select using (true);

create policy "Public read testimonials"
on testimonials for select using (is_active = true);

create policy "Authenticated write packages"
on packages for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

create policy "Authenticated write prompts"
on prompts for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

create policy "Authenticated write testimonials"
on testimonials for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

create policy "Authenticated read payments"
on payment_events for select using (auth.role() = 'authenticated');

create policy "Service write payments"
on payment_events for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');

create policy "Authenticated read webhooks"
on payment_webhooks for select using (auth.role() = 'authenticated');

create policy "Service write webhooks"
on payment_webhooks for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');
