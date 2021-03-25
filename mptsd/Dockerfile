FROM alpine
RUN apk add git make gcc musl-dev
RUN mkdir /usr/src && cd /usr/src && git clone https://github.com/gfto/mptsd.git
WORKDIR /usr/src/mptsd
RUN git clone https://github.com/gfto/libfuncs.git
RUN git clone https://github.com/gfto/libtsfuncs.git
RUN make
ENTRYPOINT ["/bin/sh"]
