CUSTOM DOCKERFILES

This folder contains custom Dockerfiles and build contexts for services used in the DevSecOps lab.

Purpose:
Some containers require additional setup, custom software, plugins, or security tweaks that are not available in the base images.

Structure example:
- jenkins/      - Custom Jenkins image with pre-installed plugins or tools
- tomcat/       - Extended Tomcat with default credentials or HTTPS manager enabled
- base-tools/   - Utility container with common tools for debugging or security scanning
- openvpn/      - Preloaded user credentials, config policies, or scripts
- gitlab-runner/- Runner container with specialized CI behavior (optional)

Usage:
Each subdirectory should contain:
- `Dockerfile`
- `entrypoint.sh` (optional)
- Additional resources required during build (certs, scripts, etc.)

To build:
```bash
docker build -t custom-jenkins ./jenkins/