# Repositories

Acest director conține fișiere binare sau scripturi pentru instalare manuală.

## Structură

- `install-dpkg/` – Scripturi și pachete `.deb` pentru instalare pe bază de Debian/Ubuntu
- `install-apk/` – Scripturi și fișiere pentru Alpine Linux (`apk add`)
- `install-rpm/` – (opțional) pentru CentOS/Fedora

## Exemple de utilizare

```bash
cd Repositories/install-dpkg
sudo dpkg -i custom-tool.deb

cd ../install-apk
apk add --allow-untrusted ./custom-tool.apk