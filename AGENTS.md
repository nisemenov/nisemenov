# AGENTS.md

## What this repo is

Personal GitHub profile repo (`nisemenov/nisemenov`). `README.md` is rendered on the owner's GitHub profile page. The CV is the main deliverable, distributed directly via DM/email (the hh.ru profile is the primary resume and lives outside this repo). There is no application code or test/lint tooling — do not run build/test commands.

## Layout

- `cv/*.md` — resume sources, one per target role. **Edit these; never edit generated artifacts.**
- `generate.sh` — converts every `cv/<role>.md` into `pdf/nisemenov-<role>.pdf`.
- `pdf/` — generated PDFs, committed to the repo and ready to send directly (README does not link them).

## Workflow

1. Edit the relevant `cv/<role>.md` (content is in Russian; tech terms/stack stay in English).
2. Run `./generate.sh` (requires `pandoc` + `typst`, both installed via Homebrew).
3. Commit source + regenerated artifacts together.

## Conventions

- Each `cv/*.md` is self-contained: contacts/education/languages are duplicated per file. When they change, update **every** file.
- Contacts live at the top of each file (phone, email, Telegram `@nikissem`, LinkedIn).
- `cv/backend.md` is the primary (actively used) resume; `cv/python-backend.md` is kept as a secondary variant. Add a new role as a new `cv/<role>.md`.
- Commit messages follow a terse "Update <file>" style (e.g. `Update cv/backend.md`).
