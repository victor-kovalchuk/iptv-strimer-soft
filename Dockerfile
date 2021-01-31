FROM alpine

RUN apk add libressl-dev
RUN mkdir /etc/astra
ADD astra-alpine /etc/astra
ADD ad0.lua /etc/astra
ENTRYPOINT ["/etc/astra/astra-alpine","/etc/astra/ad0.lua"]

