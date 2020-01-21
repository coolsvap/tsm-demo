FROM coolsvap/tsm:8
CMD ["sh", "-c", "rpm -qa | grep TIV > /opt/tsm-versions.txt"]
CMD ["sh", "-c", "tail -f /dev/null"]
