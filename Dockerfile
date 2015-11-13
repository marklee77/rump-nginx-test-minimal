FROM alpine:3.2
MAINTAINER Mark Stillwell <mark@stillwell.me>

COPY rexec /rexec
COPY nginx /nginx
COPY fs.img /fs.img

ENV SUDO_UID=1000
ENV RUMP_VERBOSE=1

EXPOSE 80

CMD ["/rexec", "/nginx", "-nx", "-ro", "/fs.img", "-rw", "docker:eth0", "--", \
     "-c", "/data/conf/nginx.conf"]
