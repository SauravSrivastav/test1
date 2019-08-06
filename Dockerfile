
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/works-with-heroku-1.0.jar simple-java-project-master.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar simple-java-project-master.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar simple-java-project-master.jar
