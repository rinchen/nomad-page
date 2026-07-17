# nomad-page

Static [Nomad Network](https://github.com/markqvist/NomadNet) Micron site for [Joey Stanford](https://github.com/rinchen), hosted by [mesh-client](https://github.com/Colorado-Mesh/mesh-client).

## Pages

| File | Path served | Contents |
| --- | --- | --- |
| [`pages/index.mu`](pages/index.mu) | `/page/index.mu` | Hub and navigation |
| [`pages/about.mu`](pages/about.mu) | `/page/about.mu` | About Joey / GitHub profile |
| [`pages/mesh-client.mu`](pages/mesh-client.mu) | `/page/mesh-client.mu` | mesh-client pitch and repo link |
| [`pages/community.mu`](pages/community.mu) | `/page/community.mu` | Discord, Colorado Mesh website, GitHub |

Community links match the mesh-client app footer:

- Discord: https://discord.com/invite/McChKR5NpS (`#mesh-client`)
- Website: https://coloradomesh.org/
- GitHub: https://github.com/Colorado-Mesh/mesh-client

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

- All four routes (`index`, `about`, `mesh-client`, `community`) render with the dark palette
- Exact brand greens/cyans/ambers (not approximate 3-digit doubles)
- Native dividers and the mesh-client protocol table render cleanly
- Internal links use `/page/<name>.mu` and navigate correctly
- External Discord, website, and GitHub links open as expected
- Narrow/fit-width wrapping remains readable; colors reset between sections

## License

Content in this repository is provided as-is for personal Nomad Network hosting.
