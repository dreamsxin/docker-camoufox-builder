FROM ubuntu:latest

WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y \
    # Mach build tools
    make wget unzip \
    # Python
    python3 python3-dev python3-pip \
    # Camoufox build system tools
    git p7zip-full aria2 \
    # CA certificates
    ca-certificates \
    && update-ca-certificates
RUN echo 'root:123456' |chpasswd

# Mount .mozbuild directory and dist folder
VOLUME /root/.mozbuild
VOLUME /app/

EXPOSE 22

CMD ["bash"]
