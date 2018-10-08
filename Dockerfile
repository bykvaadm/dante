FROM debian:buster

RUN apt update && apt -y upgrade 		&& \
    apt install -y dante-server 		&& \
    apt clean && rm -rf /var/lib/apt/lists/*    && \
    mkdir /run/danted/

COPY danted.conf /etc/danted/danted.conf
COPY init /init

RUN chmod +x /init

EXPOSE 1080
CMD ["/init"]
