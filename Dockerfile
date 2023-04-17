FROM ubuntu:22.10

MAINTAINER Tim Chaubet <tim@chaubet.be>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
       python3 \
       python3-pip && \
    pip install --upgrade pip && \
    apt-get clean && \
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["tail", "-f", "/dev/null"]
