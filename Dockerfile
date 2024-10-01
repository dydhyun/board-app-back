FROM openjdk:17

ARG JAR_FILE=build/libs/board-app-backend-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

# gradle 빌드로 bootjar 생성한 jar 파일을 (ARG 를 COPY 이름으로 만들어서 entrypoint : app.jar 를 java -jar :도커파일을 실행)
