FROM maven:latest
WORKDIR /src
COPY . /src
ARG DB_HOST
ENV DB_HOST ${DB_HOST}
RUN mvn clean install -DskipTests=true

EXPOSE 8080

CMD ["java","-jar", "/src/target/JavaWebService-1.0-SNAPSHOT.jar", "server", "/src/config.yml"]
