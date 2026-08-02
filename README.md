# nomad-page

Static [Nomad Network](https://github.com/markqvist/NomadNet) Micron site for [Joey Stanford](https://github.com/rinchen), hosted by [mesh-client](https://github.com/Colorado-Mesh/mesh-client).

## Pages

| File | Path served | Contents |
| --- | --- | --- |
| [`pages/index.mu`](pages/index.mu) | `/page/index.mu` | Hub, Colorado flag ASCII hero, Micron-browser note, navigation |
| [`pages/about.mu`](pages/about.mu) | `/page/about.mu` | About Joey / quick-facts table / what I do in Colorado Mesh / contact |
| [`pages/mesh-client.mu`](pages/mesh-client.mu) | `/page/mesh-client.mu` | mesh-client pitch, protocol table, open source, related projects |
| [`pages/community.mu`](pages/community.mu) | `/page/community.mu` | Logo hero + Colorado Mesh info: what it is, join, regional groups, weekly net, tools, coverage maps |
| [`pages/resources.mu`](pages/resources.mu) | `/page/resources.mu` | Protocols, compare table, hardware, learn, Colorado Mesh links, downloads |
| [`pages/now.mu`](pages/now.mu) | `/page/now.mu` | Current focus / recent / up next |
| [`pages/README.mu`](pages/README.mu) | `/page/README.mu` | Compact node info (NomadNet root convention) |

Hosted downloads (served at `/file/<name>` from `files/`):

| File | Route |
| --- | --- |
| [`files/mesh-client-links.txt`](files/mesh-client-links.txt) | `/file/mesh-client-links.txt` |

Community links match the mesh-client app footer:

- Discord: https://discord.coloradomesh.org (non-expiring)
- Website: https://coloradomesh.org/
- GitHub: https://github.com/Colorado-Mesh/mesh-client

Community content on the pages (regional groups, weekly net, tools, coverage
maps) is sourced from [coloradomesh.org](https://coloradomesh.org), licensed
CC BY-SA 4.0. Regional group listings point to the Discord server's regional
channels as the authoritative, up-to-date list.

## Palette

Pages share Colorado Mesh–inspired Micron colors. Page headers use 6-digit
`#!bg` / `#!fg`. Inline accents use exact 6-digit `` `FTxxxxxx` `` / `` `BTxxxxxx` ``
(supported by mesh-client’s vendored Micron parser).

| Role | Micron | Hex | Use |
| --- | --- | --- | --- |
| Background | `#!bg=020617` | `#020617` | Page background |
| Body text | `#!fg=d1d5db` | `#d1d5db` | Default foreground |
| Brand green | `` `FT86efac` `` | `#86efac` | Titles, identity, Meshtastic |
| Section blue | `` `FT60a5fa` `` | `#60a5fa` | Section headings |
| MeshCore cyan | `` `FT22d3ee` `` | `#22d3ee` | MeshCore accents / related nav |
| Reticulum amber | `` `FTf59e0b` `` | `#f59e0b` | Hosting context |
| Primary CTA | `` `FTfbbf24` `` | `#fbbf24` | Join / Discord / website actions |
| CTA highlight | `` `BT1e293b` `` | `#1e293b` | Background strip behind CTAs |
| Muted slate | `` `FT94a3b8` `` / `` `FT334155` `` | `#94a3b8` / `#334155` | Subtitles and dividers |

Dividers use Micron native rules (`-` for `<hr>`, `-.` for a dotted rule) after
setting the muted slate foreground. Inline colors always reset with `` `f `` /
`` `b `` so formatting does not bleed across sections.

## Extra markup used

The pages use a few more Micron features, all supported by mesh-client's
vendored `micron-parser.js`:

- **Anchors & jump links** — `` `:anchor-name `` plants a zero-width anchor on
  its line; `[label`#anchor-name]` is an in-page jump (the viewer lets the
  browser scroll to it). `:top` + `Back to top` links are on every page.
- **Colored ASCII hero** — the index page hero is a small ASCII Colorado flag
  built from `█` runs in inline `` `FTxxxxxx` `` color spans (blue field, white
  stripe, red C, gold disc). Each non-empty line renders as its own block, so
  no literal block is needed.
- **Literal blocks** — `` `= `` on its own line toggles monospace literal mode;
  currently unused by the pages, but supported. Keep art lines ≤ 80 cols.
- **Tables** — `` `tc `` / `` `tl `` / `` `tr `` open a table, `` `t `` closes it.
  Alignment is set on the separator row (`:---|`, `|---|`, `|:---:|`).
- **Nerd Font icons** — glyphs like `` `` `` `` `` `` are FA4 codepoints,
  rendered by a locally installed Nerd Font; used only on link/header lines so
  body prose stays readable without one.
- **File downloads** — `[label`:/file/name.txt]` opens mesh-client's
  `/file/...` download path (files live in `files/`).
- **No `*` link fields** — plain `[label`url]` navigation links (no form
  submission specs).

## Host with mesh-client

mesh-client serves static Micron pages from **Nomad Network → My Pages** (no CGI). Prefer pointing at this repository as a watched folder so edits hot-reload.

1. Start the Reticulum stack and ensure an identity exists.
2. Open **Nomad Network → My Pages**.
3. **Choose folder** and select this repository root (the directory that contains `pages/`). Selecting the repo root keeps optional `files/` serving available if you add downloads later.
4. Set a display name (for example `Joey Stanford` or `rinchen`) and click **Start serving**.
5. Edit `.mu` files on disk — the sidecar watcher reloads routes without further UI action.
6. Use **Open in browser** to preview locally. Peers discover the node via `nomadnetwork.node` announces and load `/page/index.mu`.

Source of truth for the markup is this repository. My Pages lists hosted paths as read-only when a watched folder is selected.

### Preview checklist

After serving, confirm:

- All routes (`index`, `about`, `mesh-client`, `community`, `resources`,
  `now`, `README`) render with the dark palette
- Exact brand greens/cyans/ambers (not approximate 3-digit doubles)
- Native dividers, tables, and jump links render cleanly
- Internal links use `/page/<name>.mu` and navigate correctly
- `/file/mesh-client-links.txt` downloads
- External Discord, website, and GitHub links open as expected
- Narrow/fit-width wrapping remains readable; ASCII art ≤ 80 cols;
  colors reset between sections

## License

Content in this repository is provided as-is for personal Nomad Network hosting.
