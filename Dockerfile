ARG BUILD_ARCH=amd64
FROM ${BUILD_ARCH}/debian:buster-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        alsa-utils

COPY pyinstaller/dist/* /usr/lib/rhasspyspeakers_cli_hermes/
COPY debian/bin/* /usr/bin/

ENTRYPOINT ["/usr/bin/rhasspy-speakers-cli-hermes"]
