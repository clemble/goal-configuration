FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 8080

ADD target/goal-configuration-0.17.0-SNAPSHOT.jar /data/goal-configuration.jar

CMD java -jar -Dspring.profiles.active=cloud /data/goal-configuration.jar
