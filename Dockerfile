FROM alpine:3.2
MAINTAINER Mark Stillwell <mark@stillwell.me>

WORKDIR /usr/src

COPY rexec /usr/local/bin/rexec
COPY nginx /usr/local/bin/nginx
COPY fs.img /usr/src/fs.img

ENV SUDO_UID=1000
ENV RUMP_VERBOSE=1

EXPOSE 80

CMD rexec nginx -nx -ro fs.img -rw docker:eth0 -- -c /data/conf/nginx.conf
#CMD ["/rexec", "/nginx", "-nx", "-ro", "/fs.img", "-rw", "docker:eth0", "--", \
#     "-c", "/data/conf/nginx.conf"]
