FROM centos/postgresql-10-centos7:latest
USER root
RUN mkdir -p /tmp/tsminstall
WORKDIR /tmp/tsminstall
RUN yum install wget -y \
        && wget http://10.53.17.18:32800/8.1.9.0-TIV-TSMBAC-LinuxX86.tar  \
        && tar xvf 8.1.9.0-TIV-TSMBAC-LinuxX86.tar \
        && rpm -ivh gskcrypt64-8.0.55.9.linux.x86_64.rpm \
        && rpm -ivh gskssl64-8.0.55.9.linux.x86_64.rpm \
        && yum localinstall TIVsm-API64.x86_64.rpm -y \
        && yum localinstall TIVsm-BA.x86_64.rpm -y \
        && rm -rf /tmp/tsminstall
WORKDIR /opt/app-root/src
USER postgres
ENV POSTGRESQL_USER pguser
ENV POSTGRESQL_PASSWORD postgres
ENV POSTGRESQL_DATABASE pgdb
ENV POSTGRESQL_ADMIN_PASSWORD postgres
