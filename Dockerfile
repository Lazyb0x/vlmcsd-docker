FROM alpine:latest as builder
WORKDIR /root
ADD vlmcsd /root/vlmcsd
RUN apk add --no-cache git make build-base && \
    cd vlmcsd/ && \
    make

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /root/vlmcsd/bin/vlmcsd /usr/bin/vlmcsd
EXPOSE 1688/tcp
CMD [ "/usr/bin/vlmcsd", "-D", "-d", "-l", "log.txt" ]
