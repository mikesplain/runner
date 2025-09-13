FROM ghcr.io/actions/actions-runner:latest

USER root

# Install bind-utils which includes dig
RUN apt-get update && \
    apt-get install -y dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER runner