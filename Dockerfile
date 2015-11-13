FROM scratch
MAINTAINER Mark Stillwell <mark@stillwell.me>

ADD rexec /
ADD nginx /
ADD fs.img /

EXPOSE 80

#CMD ["/rexec", "/nginx", "-nx", "-ro", "/fs.img", "-rw", "docker:eth0", "--", \
CMD ["/rexec", "/nginx", "-nx", "-ro", "/fs.img", "--", \
     "-c", "/data/conf/nginx.conf"]
