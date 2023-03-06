FROM ghcr.io/cybernop/vscode-ig-publisher:sushi-3.0.0-beta.1-alpine

RUN apk update \
    && apk add graphviz

RUN wget -P /workspaces https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar \
    && echo "alias gen_uml='java -jar /workspaces/plantuml.jar -tsvg -o ../images $(pwd)/input/images-source'" >> /etc/bash.bashrc
