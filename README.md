# AI Music Academy Petition

A public, creator-led petition to establish:

- An independent **AI Music Academy**
- Annual **AI Music Awards**
- A transparent **AI Music Charts Board**

## Live digital signatures

The site is a static GitHub Pages-ready landing page connected to Supabase.

- Petition records are stored in `public.petition_signatures`.
- Email addresses and raw signature records are not publicly readable.
- The browser may call only three purpose-built RPCs: submit a signature, retrieve a public total, and retrieve supporters who opted into public display.
- The page uses the Supabase **publishable** key only. It contains no service-role credential.

## Publish with GitHub Pages

1. In the repository, open **Settings → Pages**.
2. Select **Deploy from a branch**.
3. Choose branch **main** and folder **/(root)**.
4. Save. GitHub Pages will publish `index.html`.
5. Optionally add a custom domain in the same Pages settings screen and enforce HTTPS after DNS verification.

## Administration

Use the Supabase dashboard’s Table Editor to view signatures privately. Export only the fields necessary for campaign operations. Do not publish email addresses.

## Important campaign practices

- Keep the privacy statement accurate if your practices change.
- Use a separate opt-in for outreach email, as this site does.
- Moderate public names and messages periodically.
- Consider adding CAPTCHA or an Edge Function with bot detection before a high-traffic campaign launch.

## Schema source

The original migration is stored at `supabase/migrations/001_create_petition_schema.sql` for reference. The active database also includes an access-hardening migration applied directly through Supabase.
