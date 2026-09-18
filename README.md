# Future of AI Music Petition

A public, creator-led petition to establish an independent **AI Music Academy**, annual **AI Music Awards**, and a transparent **AI Music Charts Board**.

## Custom domain: futureofaimusic.com

This repository is configured for the apex domain `futureofaimusic.com` through the root `CNAME` file.

### Connect the domain

1. Register or confirm control of `futureofaimusic.com` with your domain registrar.
2. In GitHub, open **pimec25/ai-music-academy-petition → Settings → Pages**.
3. Under **Custom domain**, enter `futureofaimusic.com` and save.
4. At the domain registrar, configure the apex domain using GitHub Pages DNS records. Use the specific record type your registrar supports:
   - `A` records for `futureofaimusic.com` pointing to GitHub Pages IP addresses published in GitHub’s current documentation, or
   - an `ALIAS` / `ANAME` record if your registrar supports it.
5. Optional but recommended: add `www` as a `CNAME` pointing to `pimec25.github.io`, then redirect `www.futureofaimusic.com` to `futureofaimusic.com`.
6. Return to GitHub Pages after DNS verifies and enable **Enforce HTTPS**.

GitHub may take time to verify DNS and provision the certificate. Do not enable HTTPS until GitHub makes the option available.

## Live digital signatures

The static site connects to Supabase for live signatures.

- Petition records are stored in `public.petition_signatures`.
- Email addresses and raw signature records are not publicly readable.
- The browser can only submit a signature, retrieve the public total, and retrieve supporters who opted into public display.
- The site includes only a Supabase publishable key, never a service-role credential.

## Administration

Use the Supabase Table Editor to privately review and export signatures only as needed for campaign operations. Do not publish email addresses. Moderate public names and messages routinely.

## Before promotion

- Test a signature from desktop and mobile after the domain is connected.
- Verify that the public supporter wall shows only opt-in supporters.
- Add CAPTCHA or bot detection before a large paid or viral campaign.
- Keep the privacy statement accurate if campaign practices change.
