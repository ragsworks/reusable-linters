FROM koalaman/shellcheck-alpine:latest

MAINTAINER ragdata@ragdata.dev

# METADATA PARAMS
ARG VCS_REF
ARG BUILD_DATE

ARG RELEASE_VERSION=latest

RUN apk add --no-cache --update make bash

COPY entrypoint.sh /entrypoint.sh

# METADATA
LABEL org.opencontainers.image.description="This image contains the latest version of ShellCheck, ready to run"
LABEL org.label-schema.vendor="Sudo-Bot" \
    org.label-schema.url="https://github.com/koalaman/shellcheck#readme" \
    org.label-schema.name="ShellCheck Action" \
    org.label-schema.description="ShellCheck Action for GitHub" \
    org.label-schema.version=${RELEASE_VERSION} \
    org.label-schema.vcs-url="https://github.com/koalaman/shellcheck.git" \
    org.label-schema.vcs-ref=${VCS_REF} \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.docker.schema-version="1.0"

ENTRYPOINT ["/entrypoint.sh"]
