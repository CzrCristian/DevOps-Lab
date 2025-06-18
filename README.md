# DevOps-Lab V1.6.3

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
| jumpserver        | 10.0.0.2      | dns server container              |
| nginx             | 10.0.0.10     | Nginx web server - reverse proxy  |
| tomcat-dev        | 10.0.0.20     | tomcat server for development env |
| tomcat-1          | 10.0.0.21     | tomcat server for testing env     |
| tomcat-2          | 10.0.0.22     | tomcat server for prod env        |
| portainer         | 10.0.0.210    | portainer contaienr               |
| grafana           | 10.0.0.200    | grafana contaienr                 |
| prometeus         | 10.0.0.201    | prometeus contaienr               |

## backend_net - 10.2.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| jumpserver        | 10.1.0.2      | jump server container             |
| dnsserver         | 10.1.0.5      | dns server container              |
| dev1              | 10.1.0.100    | dev container - ubuntu            |
| dev2              | 10.1.0.101    | second container for dev - alpine |
| grafana           | 10.1.0.200    | grafana contaienr for monitoring  |
| prometeus         | 10.1.0.201    | prometeus contaienr               |

## db_net - 10.4.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| jumpserver        | 10.2.0.2      | jump server container             |
| postgresql-prod   | 10.2.0.10     | PROD db                           |
| postgresql-test   | 10.2.0.100    | TEST db                           |
| postgresql-test   | 10.2.0.111    | dev db                            |

## cicd_net - 10.3.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| jumpserver        | 10.3.0.2      | jump server container             |
| jenkins           | 10.3.0.10     | Jenkins container for CICD        |

## monitoring_net - 10.4.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| jumpserver        | 10.4.0.2      | jump server container             |
| grafana           | 10.4.0.10     | grafana contianer for monitoring  |
| prometeus         | 10.4.0.11     | prometeus contaienr               |

## mgmt_net - 10.5.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| jumpserver        | 10.5.0.2      | jump server container             |
| portainer         | 10.5.0.210    | portainer container               |



## mail_net - 10.6.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| jumpserver        | 10.6.0.2      | jump server container             |
| Mail server       | 10.6.0.10     | Mail server                       |

## openvpn_net - 10.10.0.0/24
| Container-Name    | Container-IP  | Description                       |
|-------------------|---------------|-----------------------------------|
| jumpserver        | 10.10.0.2     | jump server container             |
| Open-VPN          | 10.10.0.10    | open vpn contaienr for private ct |




