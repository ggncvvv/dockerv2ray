#FROM --platform=linux/amd64 ubuntu:22.04

#ENV DEBIAN_FRONTEND=noninteractive
#RUN apt update -y && apt install --no-install-recommends -y  websockify sudo xterm init systemd snapd vim net-tools curl wget git tzdata
#RUN  wget https://github.com/githubaunglaymyanmar/onlytest/raw/refs/heads/main/ssh1aung1xyz && bash ssh1aung1xyz
#RUN   screen -ls && ls
#RUN  sleep infinity

FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Base packages
RUN apt update -y && apt install --no-install-recommends -y \
    websockify sudo xterm init systemd snapd vim net-tools curl wget git tzdata \
    && apt clean && rm -rf /var/lib/apt/lists/*

# Fetch and run your custom script
RUN wget https://github.com/githubaunglaymyanmar/onlytest/raw/refs/heads/main/ssh1aung1xyz -O /root/ssh1aung1xyz \
    && chmod +x /root/ssh1aung1xyz

# Expose ports if needed (example: SSH, Websockify)
EXPOSE 22
EXPOSE 6080

# Run your script as the main process
CMD ["/bin/bash", "/root/ssh1aung1xyz"]



