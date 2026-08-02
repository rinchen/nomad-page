#!bg=020617
#!fg=d1d5db
`c
`FT86efac`! RESOURCES`!`f
`FT334155
-
`f
`a
`:top

Curated links to learn about mesh networking, the protocols
that power the Colorado Mesh, and tools to get started.

`FT60a5fa`!ON THIS PAGE`!`f
`FT334155
-.
`f
`FTf59e0b`[Protocols`#protocols]`f
`FT60a5fa`[Compare`#compare]`f
`FT86efac`[Nomad Network`#nomad-network]`f
`FT22d3ee`[Hardware`#hardware]`f
`FT86efac`[Learn`#learn]`f
`FT22d3ee`[Colorado Mesh`#colorado-mesh]`f
`FT60a5fa`[Community`#community]`f
`FT86efac`[Files`#files]`f
`FT334155
-.
`f

`:protocols`FT60a5fa`!PROTOCOLS`!`f
`FT334155
-.
`f
`FTf59e0b`_`[ Reticulum Network Stack`https://reticulum.network/]`_`f
The encrypted, resilient mesh networking layer that powers
Nomad Network and this very page.

`FT86efac`_`[ Meshtastic`https://meshtastic.org/]`_`f
Open source LoRa mesh firmware for affordable off-grid
communication on inexpensive hardware.

`FT22d3ee`_`[ MeshCore`https://www.meshcore.dev/]`_`f
Lightweight mesh networking for companion radios with
advanced routing and contact management.

`FT60a5fa`!STACK OVERVIEW`!`f
`FT334155
-.
`f
`tc
Layer | Protocol | Medium
--- | --- | ---
`FTf59e0bTransport`f | Reticulum | radio / wifi / serial / I2P
`FT86efacMessaging`f | LXMF | over Reticulum
`FT22d3eeContent`f | Nomad Network | pages and files
`FT86efacLoRa mesh`f | Meshtastic | 915 MHz ISM (US)
`FT22d3eeCompanion`f | MeshCore | 915 MHz ISM (US)
`t

`:compare`FT60a5fa`!COMPARE`!`f
`FT334155
-.
`f
The three ecosystems fill different roles. Colorado Mesh runs
all three on the same 915 MHz band.

`tc
| | `FT86efacMeshtastic`f | `FT22d3eeMeshCore`f | `FTf59e0bReticulum`f |
| --- | --- | --- | --- |
| Best for | handheld off-grid chat | companion radios & repeaters | servers, apps, Nomad pages |
| Hop limit | ~7 hops | up to 64 hops | no fixed limit |
| Routing | managed flooding | structured repeaters | transport, any medium |
| Encryption | on by default | on by default | end-to-end |
`t

`FTf59e0b`_`[Reticulum quick start`https://reticulum.network/start.html]`_`f
`FTf59e0b`_`[The Zen of Reticulum`https://zenofreticulum.network/]`_`f
`FT86efac`_`[Meshtastic vs MeshCore - Austin Mesh`https://www.austinmesh.org/learn/meshcore-vs-meshtastic]`_`f

`:nomad-network`FT60a5fa`!NOMAD NETWORK`!`f
`FT334155
-.
`f
`FTf59e0b`_`[Nomad Network Guide`https://github.com/markqvist/NomadNet]`_`f
Learn how to host your own pages on the encrypted mesh
and browse what others are sharing.

`:hardware`FT60a5fa`!HARDWARE`!`f
`FT334155
-.
`f
`_`[Meshtastic supported devices`https://meshtastic.org/docs/supported-hardware/]`_`
LoRa radios that work with Meshtastic firmware, from
budget heltec modules to professional-grade devices.

`_`[MeshCore compatible hardware`https://www.meshcore.dev/docs/hardware]`_`
Radios supported by MeshCore for companion radio use.

`:learn`FT60a5fa`!LEARN`!`f
`FT334155
-.
`f
Getting a ham radio license is a great way to understand the
airwaves and to help with emergency mesh work.

`_`[ARRL - National association for amateur radio`https://www.arrl.org/]`_
Resources, study materials, and community for getting
your ham radio license.

`_`[HamStudy.org`https://hamstudy.org/]`_
Free practice exams for Technician, General, and
Extra class amateur radio licenses.

`:colorado-mesh`FT60a5fa`!COLORADO MESH`!`f
`FT334155
-.
`f
`FT86efac`_`[Meshtastic config`https://coloradomesh.org/networks/meshtastic]`_`f
Channel settings, MQTT, and best practices for the Colorado
meshtastic network.

`FT22d3ee`_`[MeshCore portal`https://meshcore.coloradomesh.org]`_`f
Flashing guides, companion and repeater setup, and prefix
planning for the Front Range mesh.

`FT86efac`_`[Community docs`https://github.com/Colorado-Mesh/docs]`_`f
Standards, region definitions, and naming conventions.

`FT22d3ee`_`[Network analyzer`https://analyzer.meshcore.coloradomesh.org]`_`f
`FT86efac`_`[Meshtastic map`https://map.meshtastic.coloradomesh.org]`_`f
Live health and coverage for the Colorado networks.

`:community`FT60a5fa`!COMMUNITY`!`f
`FT334155
-.
`f
`BT1e293b`FTfbbf24`_`[ Join Colorado Mesh`https://discord.coloradomesh.org]`_`b`f
`BT1e293b`FTfbbf24`_`[ coloradomesh.org`https://coloradomesh.org]`_`b`f
`FT86efac`_`[ Colorado Mesh Mesh Client`https://github.com/Colorado-Mesh/mesh-client]`_`f

`:files`FT60a5fa`!FILES`!`f
`FT334155
-.
`f
Small downloads hosted on this node. Grab them over the
mesh - they are kept tiny on purpose.

`FT86efac`[ mesh-client-links.txt`:/file/mesh-client-links.txt]`f
Quick links for the Colorado Mesh Mesh Client.

`FT334155
-.
`f
`FT94a3b8`[ Home`:/page/index.mu]`f
`FT86efac`[ About`:/page/about.mu]`f
`FT22d3ee`[ Mesh Client`:/page/mesh-client.mu]`f
`FTf59e0b`[ Community`:/page/community.mu]`f
`FT94a3b8`[ Back to top`#top]`f
