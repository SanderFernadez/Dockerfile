FROM ubuntu:22.04

WORKDIR /appp

COPY src /appp

RUN apt-get update && \
    apt-get install -y python3

EXPOSE 5000

CMD ["python3", "-m", "http.server", "5000"]
