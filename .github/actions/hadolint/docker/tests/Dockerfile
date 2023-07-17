FROM hadolint/hadolint:latest-alpine

LABEL maintainer=Ragdata<ragdata@ragdata.dev>

# METADATA PARAMS
ARG VCS_REF
ARG BUILD_DATE

ARG RELEASE_VERSION=latest

RUN apk add --no-cache --update make bash

COPY entrypoint.sh /entrypoint.sh

# METADATA
LABEL org.opencontainers.image.description="This image contains the latest version of HadoLint, ready to run"
LABEL org.label-schema.vendor="HadoLint" \
    org.label-schema.url="https://github.com/hadolint/hadolint#readme" \
    org.label-schema.name="HadoLint Action" \
    org.label-schema.description="HadoLint Action for GitHub" \
    org.label-schema.version=${RELEASE_VERSION} \
    org.label-schema.vcs-url="https://github.com/hadolint/hadolint.git" \
    org.label-schema.vcs-ref=${VCS_REF} \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.docker.schema-version="1.0"

ENTRYPOINT ["/entrypoint.sh"]
