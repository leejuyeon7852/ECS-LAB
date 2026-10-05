# Java 21 환경 사용
FROM eclipse-temurin:21-jre

# 컨테이너 안 작업 폴더 지정
WORKDIR /app

# jar 파일을 컨테이너 안에 복사
COPY build/libs/ecs-lab-0.0.1-SNAPSHOT.jar app.jar

# 앱이 사용하는 포트 표시
EXPOSE 8080

# 컨테이너 시작 시 앱 실행
ENTRYPOINT ["java", "-jar", "app.jar"]