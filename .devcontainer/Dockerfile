FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Update sources for nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

RUN apt update \
    && apt install -y \
    openjdk-17-jdk \
    ruby-full \
    build-essential \
    zlib1g-dev \
    graphviz \
    nodejs

RUN npm install -g fsh-sushi@3.0.0-beta.1
RUN gem install jekyll

RUN wget -P /workspaces https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main/_updatePublisher.sh \
    && chmod a+x /workspaces/_updatePublisher.sh