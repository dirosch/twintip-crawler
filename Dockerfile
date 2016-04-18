FROM registry.opensource.zalan.do/stups/openjdk:8u66-b17-1-17

MAINTAINER Zalando SE

COPY target/twintip-crawler.jar /

CMD java $JAVA_OPTS $(java-dynamic-memory-opts) $(newrelic-agent) $(appdynamics-agent) -jar /twintip-crawler.jar

ADD target/scm-source.json /scm-source.json
