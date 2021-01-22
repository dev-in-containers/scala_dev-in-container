FROM adoptopenjdk:11-jdk-openj9

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
  apt-get install curl fish git -y && \
  curl -sL https://github.com/sbt/sbt/releases/download/v1.4.5/sbt-1.4.5.tgz | tar zxf - -C /usr/local/share/ && \
  ln -s /usr/local/share/sbt/bin/sbt /usr/local/bin/sbt && \
  useradd -m developer && \
  gpasswd -a developer sudo

USER developer
WORKDIR /home/developer
