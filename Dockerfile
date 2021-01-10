FROM alpine

RUN apk add libressl-dev
RUN mkdir /etc/astra
ADD astra-alpine /etc/astra
ADD ad0.lua /etc/astra
ADD base.lua /etc/astra
RUN chmod +x /etc/astra/astra-alpine
ENTRYPOINT ["/etc/astra/astra-alpine","/etc/astra/ad0.lua"]
