# DevOps-Lab

# TO DO - Readme.md and Security.md


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