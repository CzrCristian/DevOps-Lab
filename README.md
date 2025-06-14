# DevOps-Lab V1.5

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

# Network details

| Network Name     | Subnet       | Description                        |
| ---------------- | ------------ | ---------------------------------- |
| `frontend_net`   | 10.0.0.0/24  | Public-facing reverse proxy access |
| `backend_net`    | 10.1.0.0/24  | Internal backend and app services  |
| `db_net`         | 10.2.0.0/24  | Database zone (private)            |
| `cicd_net`       | 10.3.0.0/24  | Continuous Integration & Delivery  |
| `monitoring_net` | 10.4.0.0/24  | Observability and metrics          |
| `mgmt_net`       | 10.5.0.0/24  | Administrative services            |
| `mail_net`       | 10.6.0.0/24  | Email notifications and relay      |
| `openvpn_net`    | 10.10.0.0/24 | VPN access for secure internal use |

# Container - Network Mappping

## frontend_net - 10.1.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| nginx             | 10.1.0.10     | Nginx web server - reverse proxy  |
| tomcat-1          | 10.1.0.21     | tomcat first server               |
| tomcat-2          | 10.1.0.22     | tomcat second server              |
| portainer         | 10.0.0.210    | portainer contaienr               |

## backend_net - 10.2.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| dev1              | 10.1.0.100    | first container for dev - ubuntu  |
| dev2              | 10.1.0.101    | second container for dev - alpine |

## db_net - 10.4.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| postgresql-main   | 10.2.0.10     | Main db                           |
| postgresql-drc    | 10.2.0.100    | DRC db                            |

## cicd_net - 10.3.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|

## monitoring_net - 10.4.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|

## mgmt_net - 10.5.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| portainer         | 10.5.0.210    | portainer container               |


## mail_net - 10.6.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|

## openvpn_net - 10.10.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|



