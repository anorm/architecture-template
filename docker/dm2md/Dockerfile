FROM python:3-alpine
RUN apk add --no-cache inotify-tools
WORKDIR /dm2md
COPY monitor /usr/bin
RUN pip install -r "https://raw.githubusercontent.com/anorm/plantuml-ext/main/requirements.txt"
RUN wget "https://raw.githubusercontent.com/anorm/plantuml-ext/main/dm2md"
