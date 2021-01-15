FROM debian:jessie

COPY sleep.sh /sleep.sh
COPY run.sh /run.sh

CMD exec /run.sh
