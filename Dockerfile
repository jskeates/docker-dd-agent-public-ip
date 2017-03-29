FROM datadog/docker-dd-agent:latest

RUN apt-get update \
 && apt-get install -y curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
 
ADD wrapper.sh /wrapper.sh

ENTRYPOINT ["/wrapper.sh"]
CMD []
