FROM ubuntu:16.04

COPY curler.sh curler.sh

RUN chmod +x curler.sh
RUN apt-get update > /dev/null 2>&1 && apt-get install -y curl > /dev/null 2>&1

CMD ["/bin/sh", "/curler.sh"]
