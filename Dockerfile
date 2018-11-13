FROM python:3-alpine
COPY rootfs/ /
ENTRYPOINT ["/bootit"]
