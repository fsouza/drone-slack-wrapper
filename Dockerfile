FROM plugins/slack AS plugin

FROM alpine:3.8

RUN apk add --no-cache ca-certificates
COPY --from=plugin /bin/drone-slack /bin
