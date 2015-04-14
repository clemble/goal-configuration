FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 10004

ADD target/goal-configuration-*-SNAPSHOT.jar /data/goal-configuration.jar

CMD java -jar -Dspring.profiles.active=cloud -Dserver.port=10004 /data/goal-configuration.jar
