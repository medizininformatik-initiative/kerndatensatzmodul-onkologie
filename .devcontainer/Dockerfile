FROM mcr.microsoft.com/devcontainers/java:0-17

RUN apt update \
    && apt install -y \
    ruby-full \
    build-essential \
    zlib1g-dev \
    graphviz \
    nodejs \
    npm

RUN npm install -g fsh-sushi@3.0.0-beta.1
RUN gem install jekyll

RUN wget -P /workspaces https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main/_updatePublisher.sh \
    && chmod a+x /workspaces/_updatePublisher.sh