# 🌐 devops-networking — Networking & Connectivity Execution Repository

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Learning Hub](https://img.shields.io/badge/DevOps-Learning%20Hub-blue.svg)](https://github.com/shubhu-io/devops-learning)

Production networking diagnostics and automation scripts covering DNS, port scanning, network auditing, and web health checks for cloud and on-prem infrastructure.

---

## ⚡ Quick Start

```bash
git clone https://github.com/shubhu-io/devops-networking.git
cd devops-networking
chmod +x setup.sh
./setup.sh
```

Run a full network audit:
```bash
./scripts/network-audit.sh
```

---

## 📂 Repository Structure

```
devops-networking/
├── setup.sh                    # Install networking tools (nmap, dig, netstat, etc.)
├── uninstall.sh                # Remove installed tools
└── scripts/
    ├── network-audit.sh        # Full network interface & route audit
    ├── dns-lookup.sh           # DNS resolution & record lookup tool
    ├── port-scanner.sh         # TCP/UDP port scanner (nmap wrapper)
    └── web-health.sh           # HTTP endpoint health & latency checker
```

---

## 🛠️ Scripts Reference

| Script | Description | Usage |
|--------|-------------|-------|
| `network-audit.sh` | NIC, routes, open ports, firewall rules | `./scripts/network-audit.sh` |
| `dns-lookup.sh` | A, MX, NS, TXT, CNAME lookups | `./scripts/dns-lookup.sh example.com` |
| `port-scanner.sh` | Scan host for open TCP/UDP ports | `./scripts/port-scanner.sh 192.168.1.1 1-1000` |
| `web-health.sh` | HTTP status code + response time | `./scripts/web-health.sh https://example.com` |

---

## 📚 Learning Hub

For OSI model, TCP/IP, VPC subnetting, and firewall theory, visit the [DevOps Learning Hub](https://github.com/shubhu-io/devops-learning).

---

## 📄 License

Licensed under [MIT](LICENSE).
