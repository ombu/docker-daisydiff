FROM openjdk:8-jdk

WORKDIR /tmp/daisydiff

RUN apt-get update && \
    apt-get install -y --no-install-recommends git maven && \
    git clone https://github.com/DaisyDiff/DaisyDiff . && \
    mvn package

ADD start.sh .

RUN chmod +x start.sh && \
    mkdir -p /tmp/run/out

WORKDIR /tmp/run

ENTRYPOINT ["/tmp/daisydiff/start.sh"]
