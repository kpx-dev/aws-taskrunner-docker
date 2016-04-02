FROM ubuntu:15.10
MAINTAINER Kien Pham <shop@kienpham.com>

RUN apt-get update && apt-get install -y default-jre

COPY TaskRunner-1.0.jar /home
WORKDIR /home

ENTRYPOINT ["java", "-jar", "TaskRunner-1.0.jar"]
CMD [""]
