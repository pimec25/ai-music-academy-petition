-- Reference migration for the AI Music Academy petition.
-- Applied to project curfzomlvlmlgdubisri on 2026-09-18.

create table if not exists public.petition_signatures (
  id uuid primary key default gen_random_uuid(),
  full_name text not null check (char_length(trim(full_name)) between 2 and 80),
  email text not null,
  email_normalized text generated always as (lower(trim(email))) stored,
  supporter_role text not null check (char_length(trim(supporter_role)) between 2 and 100),
  country_region text check (country_region is null or char_length(trim(country_region)) <= 80),
  support_message text check (support_message is null or char_length(trim(support_message)) <= 400),
  display_publicly boolean not null default false,
  campaign_updates_opt_in boolean not null default false,
  petition_version text not null default '2026-09-18',
  source_ip inet,
  signed_at timestamptz not null default now(),
  unique (email_normalized)
);

alter table public.petition_signatures enable row level security;

-- No direct reads or writes are allowed from browser roles.
revoke all on table public.petition_signatures from anon, authenticated;

create policy "petition signatures are not readable from the API"
on public.petition_signatures for select to anon, authenticated using (false);
create policy "petition signatures are not directly insertable from the API"
on public.petition_signatures for insert to anon, authenticated with check (false);
create policy "petition signatures are not directly updatable from the API"
on public.petition_signatures for update to anon, authenticated using (false) with check (false);
create policy "petition signatures are not directly deletable from the API"
on public.petition_signatures for delete to anon, authenticated using (false);

-- The production migration also defines security-definer RPCs:
-- submit_petition_signature(...), get_petition_signature_count(),
-- get_public_petition_supporters(p_limit integer).
-- Only these functions are granted to anon/authenticated roles.
