# Use the official Python image.
# https://hub.docker.com/_/python
FROM python:3.8.3-alpine3.12

ARG CLOUD_SDK_VERSION=300.0.0
ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION
ENV PATH /google-cloud-sdk/bin:$PATH

RUN set -ex && \
    apk add --no-cache \
    curl \
    gcc \
    libressl-dev \
    musl-dev \
    libffi-dev && \
    pip install -U \
    crcmod \
    tox

# Support for Google Cloud SDK
# RUN set -ex && \
#     curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
#     tar zxvf google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
#     rm google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
#     gcloud config set core/disable_usage_reporting true && \
#     gcloud config set component_manager/disable_update_check true && \
#     gcloud config set metrics/environment github_docker_image && \
#     gcloud --version

VOLUME ["/root/.config"]

CMD ["/bin/sh"]
