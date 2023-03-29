# Use the official Ubuntu 20.04 LTS image as the base image
FROM ubuntu:20.04

# Install xRDP and LXDE desktop environment
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y xrdp lxde && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose the default RDP port
EXPOSE 3389

# Start xRDP when the container starts
CMD ["xrdp", "-n"]
