FROM openjdk:8u121-jre-alpine

MAINTAINER Niklas.Hanft@mindsmash.com

ENV TIKA_VERSION 1.14

COPY src/${TIKA_VERSION}/tika-server-${TIKA_VERSION}.jar /

EXPOSE 9998

ENTRYPOINT java -jar /tika-server-${TIKA_VERSION}.jar -h 0.0.0.0 -server