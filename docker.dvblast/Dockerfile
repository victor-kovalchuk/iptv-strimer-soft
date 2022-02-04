FROM ubuntu:18.04
RUN apt-get update && apt-get install -y libev-dev dvblast && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /root
CMD ["/root/entrypoint.sh"]
