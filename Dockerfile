FROM haproxy:latest
COPY ./haproxy.cfg /usr/local/etc/haproxy/

RUN mkdir /run/haproxy

USER haproxy
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
