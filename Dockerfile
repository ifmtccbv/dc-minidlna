FROM alpine:3.7

LABEL maintainer Carlos Rabelo "developer@carlosrabelo.com.br"

RUN apk --no-cache add minidlna

COPY entrypoint.sh /

RUN chmod +x entrypoint.sh

EXPOSE 8200

ENTRYPOINT ["/entrypoint.sh"]
