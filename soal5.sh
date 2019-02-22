awk '(/cron/ || /CRON/) && (!/sudo/) && (NF < 13) {print}' /var/log/syslog >> /home/hayu/nomer5.log
