FROM openjdk:oraclelinux8
COPY . .
RUN javac Hello.java
CMD java Hello