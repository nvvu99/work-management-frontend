FROM node:18.17.0-alpine

ARG HOST_UID=1000
ARG HOST_GID=1000

RUN apk add shadow bash

RUN deluser --remove-home node \
    && groupadd --gid $HOST_GID node \
    && useradd --uid $HOST_UID --gid $HOST_GID --shell /bin/bash --create-home node
