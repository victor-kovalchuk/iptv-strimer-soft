FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y libssl-dev vim libdvbcsa1
RUN mkdir /etc/astra
ADD astra /etc/astra
ADD ad0.lua /etc/astra
ADD base.lua /etc/astra
ADD after_start /etc/astra
RUN chmod +x /etc/astra/astra
RUN chmod +x /etc/astra/ad0.lua
RUN chmod +x /etc/astra/after_start

CMD ["/etc/astra/after_start"]

