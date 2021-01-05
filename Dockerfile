FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y libssl-dev vim libdvbcsa1
RUN mkdir /etc/astra
ADD astra /etc/astra
ADD adapter1.lua /etc/astra
ADD base.lua /etc/astra
RUN chmod +x /etc/astra/astra
RUN chmod +x /etc/astra/adapter1.lua
CMD ["/bin/bash"]

