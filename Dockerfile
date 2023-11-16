FROM ubuntu:23.04

MAINTAINER Tim Chaubet <tim@chaubet.be>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  python3 \
  python3-venv \
  net-tools \
  make \
  wget \
  ruby \
  ca-certificates \
  fonts-dejavu \
  graphviz \
  asciidoctor \
  enchant-2 \
  libenchant-2-2 \
  imagemagick \
 && apt-get clean -y \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/* \
 && python3 -m venv /.venv/app \
 && export PATH=$PATH:/.venv/app
