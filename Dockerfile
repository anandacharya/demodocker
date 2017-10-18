FROM  mysql:5.1.44
MAINTAINER Anand Acharya email:acharya81@rediffmail.com

ADD mysql_start.sh /tmp/mysql_start.sh
ADD demo.sql /tmp/demo.sql
EXPOSE 3306
CMD /tmp/mysql_start.sh && sleep 360d
