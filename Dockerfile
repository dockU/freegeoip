FROM docku/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

EXPOSE 80

ENV FREEGEOIP_HOST_PORT "0.0.0.0:80"
ENV FREEGEOIP_VERSION "3.0.4"

ADD https://dl.bintray.com/jchen/docku/$FREEGEOIP_VERSION/freegeoip /usr/sbin/freegeoip
ADD run /service/freegeoip/run
