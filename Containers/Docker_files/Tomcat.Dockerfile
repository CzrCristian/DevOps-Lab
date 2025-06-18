# V 1.0.0

# tomcat container
FROM tomcat:latest

# Install OpenSSH, OpenSSL, UFW
RUN apt-get update && \
    apt-get install -y openssh-server openssl ufw && \
    apt-get clean

# User config
RUN useradd -m -s /bin/bash ruser && \
    echo "ruser:P@ssw0rd" | chpasswd

# SSH config
RUN mkdir /var/run/sshd

# UFW comnfig
RUN ufw default deny incoming && \
    ufw default allow outgoing && \
    ufw allow from 10.1.0.2 to any port 22 proto tcp && \
    ufw allow from 10.0.0.10 to any port 80 proto tcp && \
    ufw allow from 10.0.0.10 to any port 443 proto tcp && \
    ufw allow from 10.0.0.22 to any port 22 proto tcp && \
    ufw allow from 10.0.0.22 to any port 80 proto tcp && \
    ufw allow from 10.0.0.22 to any port 443 proto tcp && \
    yes | ufw enable

# Port expose
EXPOSE 22 80 443

# Start tomcat and ssh server
CMD service ssh start && catalina.sh run
