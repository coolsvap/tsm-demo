FROM centos:7
RUN mkdir -p /tmp/tsminstall
WORKDIR /tmp/tsminstall
RUN yum install wget -y; \
  wget http://172.17.0.2:8000/6.3.2.0-TIV-TSMBAC-LinuxX86.tar; \
  tar -xvf 6.3.2.0-TIV-TSMBAC-LinuxX86.tar; \
  rpm -ivh gskcrypt64-8.0.14.14.linux.x86_64.rpm; \
  rpm -ivh gskssl64-8.0.14.14.linux.x86_64.rpm; \
  yum -y localinstall TIVsm-API64.x86_64.rpm; \
  yum -y localinstall TIVsm-BA.x86_64.rpm; \
  yum clean all; \
  rm -rf /tmp/tsminstall /var/cache/yum
  
CMD ["sh", "-c", "tail -f /dev/null"]
