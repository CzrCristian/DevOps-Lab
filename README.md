# DevOps-Lab

# TO DO - Readme.md and Security.md

Prerequisites:
- Docker Desktop (WSL2 - Ubuntu 24.04 for Windows 11 !-RECOMMENDED-! )
- Git

# How to start the DevOps lab

Run the lab `docker-compose up -d`

This command will:
- Create all defined Docker networks
- Assign static IPs to each container
- Launch services behind an HTTPS reverse proxy (NGINX)
- Restrict sensitive services to VPN access only

Stop the lab `docker-compose down` or with volume cleanup: `docker-compose down -v`

To see logs of a services `docker-compose logs -f <service-name>`

# Container Network Mapping

| Network Name     | Subnet       | Description                        | Connected Services                                                                                 |
| ---------------- | ------------ | ---------------------------------- | ---------------------------------------------------------------------------------------------------|
| `frontend_net`   | 10.0.0.0/24  | Public-facing reverse proxy access | `nginx`, `jenkins`, `gitlab`, `grafana`, `prometheus`, `portainer`                                 |
| `backend_net`    | 10.1.0.0/24  | Internal backend and app services  | `nginx`, `tomcat`, `jenkins`, `gitlab`, `grafana`, `prometheus`, `jumpserver`, `ubuntu`, `alpine`  |
| `db_net`         | 10.2.0.0/24  | Database zone (private)            | `mysql`, `postgres`, `gitlab`                                                                      |
| `cicd_net`       | 10.3.0.0/24  | Continuous Integration & Delivery  | `jenkins`, `gitlab`                                                                                |
| `monitoring_net` | 10.4.0.0/24  | Observability and metrics          | `grafana`, `prometheus`                                                                            |
| `mgmt_net`       | 10.5.0.0/24  | Administrative services            | `portainer`, `dns`, `jumpserver`                                                                   |
| `mail_net`       | 10.6.0.0/24  | Email notifications and relay      | `maildev`                                                                                          |
| `openvpn_net`    | 10.10.0.0/24 | VPN access for secure internal use | `openvpn`                                                                                          |