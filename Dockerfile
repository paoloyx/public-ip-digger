FROM tutum/dnsutils
LABEL maintainer="paolo.filippelli@gmail.com"
LABEL description="Sample containers that continuously echoes the public ip of host where it's running"

# https://unix.stackexchange.com/a/81699/37512
CMD ["/bin/sh", "-c", "while true; do dig @resolver4.opendns.com myip.opendns.com +short; sleep 1; done"]