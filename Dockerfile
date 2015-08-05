from dkanbier/zabbix-web

RUN yum install cronie
RUN sudo pip install -r scripts/requirements.txt
COPY scripts /etc/zabbix/api/scripts
RUN chmod -R a+x /etc/zabbix/api/scripts

echo "* * * * *   root    /etc/zabbix/api/scripts/monitor.py" >> /etc/crontab

RUN chmod 600 /etc/crontab
RUN chown zabbix:crontab /etc/crontab


