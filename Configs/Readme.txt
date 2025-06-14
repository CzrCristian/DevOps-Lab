CONFIGURATION FILES

This directory holds configuration files for all major components in the DevSecOps lab.

Structure:
- nginx/         - Contains one `.conf` file per application (e.g., `jenkins.conf`, `grafana.conf`)
- tomcat/        - Contains `server.xml` (HTTPS and connector config)
- coredns/       - Contains `Corefile` for local DNS resolution (*.host.local)
- openvpn/       - VPN server configuration (user access, routing)

All configuration files are mounted into their respective containers using `volumes` in `docker-compose.yml`.

Ensure that:
- Hostnames and internal IPs match the values assigned in the Docker networks
- Permissions on sensitive files are appropriate