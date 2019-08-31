FROM maven:3-jdk-8
RUN git clone https://github.com/ElmerVL/store-webapp.git
WORKDIR /store-webapp
RUN mvn clean package
ENV APP_NAME=store-webapp
EXPOSE 8080
WORKDIR /store-webapp/target
ENTRYPOINT exec java -jar store-webapp-capsule.jar
