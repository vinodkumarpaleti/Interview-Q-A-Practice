
## CRON Job Syntax
```
*/5 * * * * ---->This will execute Every 5 minutes
'*/5' --> Every 5 minutes
'*'   --> Every Hour
'*'   --> Every day of month
'*'   --> Every month
'*'   --> Every day of the week.
```
## Identify OS information in linux
```
uname -a or hostnamectl
```
## Restart the service in Linux
```
systemctl restart <service-name>

systemctl restart nginx
```
## To list all running services in Linux
```
systemctl list-units --type=service --state=running
```
## To list all running and inactive services
```
systemctl list-units --type=service --state --all
```
## List all services with their status and whether they are enabled or disabled:
```
systemctl list-unit-files --type=service
```
