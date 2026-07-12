# Repository Guide

## Safe Commands

- Use Hugo Extended `0.161.1` (the CI-pinned version).
- Run `hugo server --buildDrafts` for local preview.
- Run `hugo --minify` as the repository's build/verification check; there are no separate test, lint, or typecheck suites.
- Do not run `build.sh` for routine development. It converts every PNG/JPEG under the repository, rewrites matching extensions in nearly every non-`.git` file, and deploys directly to `/var/www/montevideo.restaurant/`.
- Treat `public/`, `resources/_gen/`, and `.hugo_build.lock` as generated Hugo output; do not hand-edit them.

## Hugo Structure

- `content/*.md` contains one restaurant per file; `content/_index.md` is the homepage and includes the search script.
- Root `layouts/` overrides `themes/lugo/layouts/`. Check the root override before changing the vendored theme. `static/` is copied directly to the site root.
- The Lugo theme is vendored source, not a submodule. Change `themes/lugo/` only for behavior intended to affect the theme rather than this site's root overrides.
- `config.toml` enables Goldmark `unsafe = true`; content intentionally mixes Markdown, raw HTML, and Hugo shortcodes.

## Restaurant Content

- Follow a current `content/*.md` file plus `example.md`; live entries use YAML front matter (`title`, `date`, `tags`, `author`), despite the README's stale statement that files begin with `#`.
- Name entries with lowercase hyphenated slugs in `content/` and place images in `static/pix/`. Reference images as `/pix/<slug>.webp`; menu images use `/pix/<slug>-menu-01.webp`, etc.
- Add only compressed `.webp` restaurant/menu images. Do not rely on `build.sh` to convert source images.
- Reuse existing tags when possible. Tags drive category pages and are embedded in the homepage restaurant search.
- `author` is a slug looked up in `data/authors/<slug>.json`, not display text. If no matching file exists, the contributor block is omitted.
- Keep files Unix-style, with no leading/trailing blank lines and a final newline.

## Delivery

- Gitea CI builds pushes and pull requests to `master` with `hugo --minify`.
- Pushes to `master` also trigger remote deployment and a Cloudflare purge; never emulate that deploy flow during local verification.
