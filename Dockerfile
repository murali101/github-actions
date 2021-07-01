FROM gradle:jdk10

RUN useradd -m -u 1000 -s /bin/bash jenkins

RUN yum install openssh-clients