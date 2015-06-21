from dkanbier:zabbix-web

RUN pip install -r requirements.txt
COPY scripts /etc/zabbix/api/scripts
RUN chmod -R a+x /etc/zabbix/api/scripts

echo "*  *    * * *   root    /etc/zabbix/scripts/logmon/monitor.py" >> /etc/crontab

RUN chmod 600 /etc/crontab
RUN chown zabbix:crontab /etc/crontab


