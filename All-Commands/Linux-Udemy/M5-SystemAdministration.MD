# Module-5: System Administration
* Text editors in linux
  * vi - visual editor
  * ed - standard lione editor
  * vim - advance version of vi
## most common keys
  * i - insert
  * esc - escape out of any mode
  * r - replace
  * dd - delete entire line
  * x - delete character by character
  * o - enter the new line in vi editor
  * u - undo the deleted content
  * /keyword-name - search for specific keyword in vi editor
  * :q! - quit without saving
  * :wq! - quit and save
## sed command
* replace a string in a file with a new string
* find and delete a line
* to replace a tabs with spaces
* substitute within vi editor

```
sed 's/vinod/kumar/g' sample-file // here the changed name shows on the o/p only not on existing file.
                                  // here 'g' means global it will replace everywhere
```
```
sed -i 's/vinod/kumar/g' sample-file  // i-means it will insert into a file.
```
```
sed '/Vinod/d' sample-file  //It will delete all the lines starts with Vinod.
```
```
sed -i '1d' samplr-file //deletes 1st line
```
## user account management
* **useradd** - To create a new user in Linux. A different options can be used to modify userId, home directory etc.
* **userdel**-This command is used to delete the user. Please note this command alone will not delete the user home directory. You will have to use option –r to delete user home directory
* **groupadd**-Creates a new group
* **groupdel**-Removes an existing group
* **usermod**-Modify user attributes such as user home directory, user group, user ID etc.

## User Files
* **/etc/passwd** - This file has all user’s attributes
* **/etc/shadow** - This file contains encrypted user password and password policy
* **/etc/group** - All group and user group information

```
userdel spiderman
```
```
userdel -r spiderman
```
```
groupadd nonewgroup
```
```
cat /etc/group
```
```
groupdel nonewgroup
```
## switch users and sudo access
* **sudo** : If you do not have root privilages, but you still need to run certain commands use sudo followed by command.
* **visuso**: It edits sudoers file(wheel group)
```
su - <user-name>
su - vinod
```
## monitor users(who, last, w, id)
* **who**: It gives how many people are logged in and their userid, time.
* **last**: It gives all the users that be logged in from day.
* **w**: It gives the how many people login along with additional details.
* **finger**: It gives system details and protocols
* **id**: it gives the userid
```
last
```
```
last | more
```
```
last | awk '{print $1}' //It will give first column
```
```
last | awk '{print $1}' | sort | uniq //filter the duplicates
```
```
id vinod
```
## system utility commands (date,uptime,hostname,uname,which,cal,bc)
* **date**: displays the current date
* **uptime**: running time
* **hostname**: which system you are logged in
* **uname**: OS information
* **which**: location of the command that.
* **cal**: It gives the calender information
* **bc**: binary calculation.
```
hostname
```
```
uname -a
```
```
which date
```
```
cal
```
```
cal 9 1997
```
```
cal 2016  //displays all months
```
## Process and Service commands
### systemctl (or) service
* **ps(process status)**: It checks what are the process running in linux system.
* **top**: It will show all the process running in the system       and memory information being used by the process.
* **kill**: It kills the process.
* **crontab**: It schedules these applications and process.
* **at**: It schedules one time bases.
```
systemctl start nginx
```
```
systemctl enable nginx
```
```
systemctl stop nginx
```
```
systemctl restart tomcat
```
```
systemctl list-units --all  //It give all active and inactive services
```
```
systemctl status nginx
```
```
systemctl disable nginx
```
**ps-process status command**
```
ps  //It shows process of current shell
```
```
ps -e //It shows all running processes
```
```
ps aux  //It shows all running process in BSD format
```
```
ps -ef  //It shows all running process in full format listing.
```
```
ps -u vinod //It shows all process by username
```
* **top-command**
```
top   //It is used to show the linux process and it provides real-time view of running system.
```
```
top -u vinod  //Shows the tasks/process by users
```
* **kill -command**
  * **kill**: Is used to terminate the processes manually
  ```
  kill -l //To get a list of all signal names or signal number
  ```
  ```
  kill <PID-NUMBER>`//kill a process with default signal
  ```
  ```
  kill -1 <pid>  //Restart
  ```
  ```
  kill -2 <pid>  //Interrupt from the keyboard just like ctrl+c
  ```
  ```
  kill -9  <pid> //forcefully kill the process
  ```
  ```
  kill -15  <pid> //kill a process gracefully
  ```
  ```
  killall //It kills all the process
  ```
  ```
  pkill   //It kills by the process names
  ```
 * **crontab command**
    *  **crontab**: Is used to schedule the tasks
    *  **crontab -e**: Edit the crontab
    *  **crontab -l**: List the crontab entries
    *  **crontab -r**: Remove the crontab
    *  **crond**: crontab daemon/service that manages scheduling
```
crontab -e  //write (21 16 * 10 * echo "My crontab entry" > mycrontab)
```
```
crontab -l
```
```
crontab -r
```
## system monitoring commands
* **top**: memory utilization
* **df**: It gives disk partition information
* **dmesg**: It gives the system related warnings error msgs, and failures.
* **iostat1**: i/p and o/p statistics
* **netstat**: It gives gateway information and subnet mask.
* **free**: It gives physical and virtual memory.
* **cat /proc/cpuinfo**: To read the file of CPU info
* **cat /proc/meminfo**: To read the file of memory info
```
df -h   
```
```
top
```
```
dmsg | more
```
```
iostat
```
```
iostat 1
```
```
netstat -rnv
```
```
netstat | more
```
```
free
```
```
cat /proc/meminfo
```
## system maintenance commands
* **shutdown**: shutdown the linux system
* **init 0-6**: 0-is for shutdown, 6-is for reboot, 3-is for multi-user mode.
* **reboot**: reboot linux machine.
* **halt**: It shutdown the system if there is any process running that needs some time to bring down other process.
```
init
```
```
reboot
```
```
halt
```
## changing system hostname
* **hostname**: hostname is the linux machine that assigned during the first install.
```
hostnamectl set-hostname my-new-hostname
```
## Finding system information
* To find which system you are logged in and which o/s and hardware.
```
cat /etc/redhat-release
```
```
uname -a
```
```
dmidecode
```
```
arch  //to find architecture of linux system
```
```
uname -a
```
## Environmenta Variables
* Environment variables are set of defined rules and values to build an environment.
```
printenv (or) env //to print all environment variables
```
```
echo $SHELL //to view one environment variable
```
```
export Test=1 //To set env variables
echo $Test
```
```
vi bashrc //To set env variables permanently
Test='123'
export Test
```
```
vi /etc/profile (or) /etc/bashrc
Test='123'
export Test
```