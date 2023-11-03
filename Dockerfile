FROM ubuntu:22.04

RUN apt update

RUN apt install -y maven

RUN apt install -y default-jdk

WORKDIR /app

COPY . .

RUN mvn package
