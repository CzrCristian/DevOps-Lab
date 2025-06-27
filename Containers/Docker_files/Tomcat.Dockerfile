# V 1.0.0

# tomcat container
FROM tomcat:latest

# Install OpenSSH, OpenSSL, UFW
RUN apt-get update && \
    apt-get install -y openssh-server openssl && \
    apt-get clean

# User config
RUN useradd -ms /bin/bash ruser && echo "ruser:P@ssw0rd" | chpasswd && \
    usermod -aG sudo ruser

# SSH config
RUN sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config && \
    sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    echo 'AllowUsers ruser' >> /etc/ssh/sshd_config

# Port expose
EXPOSE 22 80 443

# Start tomcat and ssh server
CMD service ssh start && catalina.sh run; tail -f /dev/null
