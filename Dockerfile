FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 10004

ADD ./buildoutput/goal-configuration.jar /data/goal-configuration.jar

CMD java -jar -Dspring.profiles.active=cloud -Dlogging.config=classpath:logback.cloud.xml -Dserver.port=10004 /data/goal-configuration.jar
