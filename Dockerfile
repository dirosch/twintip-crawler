FROM zalando/openjdk:8u45-b14-4

MAINTAINER Zalando SE

COPY target/twintip-crawler.jar /

CMD java $(java-dynamic-memory-opts) $(newrelic-agent) $(appdynamics-agent) -jar /twintip-crawler.jar

ADD target/scm-source.json /scm-source.json
