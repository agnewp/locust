FROM python:3.6.6-alpine3.8

RUN apk --no-cache add g++ \ 
      && pip install locustio pyzmq

COPY entrypoint.sh /

# Set script to be executable
RUN chmod 755 /entrypoint.sh

EXPOSE 8089 5557 5558

ENTRYPOINT ["/entrypoint.sh"]
