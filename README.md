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

## Host with mesh-client

mesh-client serves static Micron pages from **Nomad Network → My Pages** (no CGI).

1. Start the Reticulum stack and ensure an identity exists.
2. Open **Nomad Network → My Pages**.
3. Set a display name (for example `Joey Stanford` or `rinchen`) and click **Start serving**.
4. Replace `index.mu` and add the other pages from this repo (paste into the editor, or copy the files into the sidecar `nomadnetwork/pages/` directory under Electron userData).
5. Use **Open in browser** to preview locally. Peers discover the node via `nomadnetwork.node` announces and load `/page/index.mu`.

Source of truth for the markup is this repository; mesh-client does not mount an external pages directory automatically.

## License

Content in this repository is provided as-is for personal Nomad Network hosting.
