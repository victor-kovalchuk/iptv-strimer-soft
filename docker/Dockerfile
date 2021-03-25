FROM alpine

RUN apk add libressl-dev
WORKDIR /etc/astra
ADD astra-alpine /etc/astra
ADD ad0.lua /etc/astra
ADD curl /etc/astra
ADD after_start /etc/astra
ENTRYPOINT ["/etc/astra/after_start"]

