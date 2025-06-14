CERTIFICATES DIRECTORY

This folder contains all SSL/TLS certificates used for securing internal container communications
(e.g., Nginx ↔ Tomcat) and for exposing services over HTTPS to the public network.

Structure:
- nginx/        - Contains `nginx.crt`, `nginx.key` (wildcard certificate for *.cysaas.local)
- tomcat/       - Contains `keystore.p12` (generated from certificate for Tomcat HTTPS)
- gen-certs.sh  - Script to generate wildcard certificates using OpenSSL

NOTE:
- These certificates are self-signed and intended for development/lab use only.
- Do NOT expose `.key` files publicly in production environments.