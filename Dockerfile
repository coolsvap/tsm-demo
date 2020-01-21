FROM coolsvap/tsm:6
CMD ["sh", "-c", "rpm -qa | grep TIV > /opt/tsm-versions.txt"]
CMD ["sh", "-c", "tail -f /dev/null"]
