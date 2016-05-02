FROM registry.opensource.zalan.do/stups/openjdk:8u77-b03-1-20

MAINTAINER Zalando SE

COPY build/libs/twintip-crawler.jar /

CMD java $JAVA_OPTS $(java-dynamic-memory-opts) $(newrelic-agent) $(appdynamics-agent) -jar /twintip-crawler.jar

ADD scm-source.json /scm-source.json
