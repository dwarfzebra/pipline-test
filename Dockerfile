# 使用基础的 Java 8 镜像
FROM openjdk:8-jdk-alpine

# 设置工作目录
WORKDIR /app

# 复制编译好的 Spring Boot JAR 文件到镜像中
COPY target/*.jar app.jar

# 设置启动命令，注意这里的 JAR 文件名要和上面的COPY命令中的文件名一致
CMD ["java", "-jar", "app.jar"]
