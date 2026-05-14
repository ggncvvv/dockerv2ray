FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install base tools
RUN apt-get update -y && \
    apt-get install --no-install-recommends -y \
    websockify sudo xterm init systemd snapd vim net-tools curl wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Fetch and run your script
RUN wget https://github.com/githubaunglaymyanmar/onlytest/raw/refs/heads/main/ssh1aung1xyzrailway && bash ssh1aung1xyzrailway && screen -ls

RUN sleep infinity
# Expose SSH port (adjust if your script uses another)
EXPOSE 22

# Keep container alive
CMD ["/usr/sbin/sshd","-D"]
CMD bash -c "tail -f /dev/null"
