FROM alpine

RUN apt-get update
RUN apt-get install -y libssl-dev libdvbcsa1
RUN mkdir /etc/astra
ADD astra /etc/astra
ADD ad0.lua /etc/astra
ADD base.lua /etc/astra
RUN chmod +x /etc/astra/astra

ENTRYPOINT ["/etc/astra/astra","/etc/astra/ad0.lua"]

