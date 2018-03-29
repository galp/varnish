FROM debian:9

RUN echo 'APT::Install-Recommends "0";' > /etc/apt/apt.conf.d/99norecommends \
     && apt-get update && apt-get install -y varnish \
     && apt-get clean \
     && rm /var/lib/apt/lists/*.*

VOLUME /etc/varnish /var/lib/varnish
EXPOSE 80 8080


