# Module-7: Networking, Services and System Updates
## Network Files and Commands
* Interface Dectection
* Assign an IP address
* Interface Configuration files
  * /etc/nsswitch.conf
  * /etc/hosts
  * /etc/sysconfig/netwok
  * /etc/sysconfig/network-script
  * /etc/resolv.conf    //It specifies DNS server
  ```
  cat /etc/nsswitch.conf
  ```
  ```
  more /etc/nsswitch.conf
  ```
  ```
  more /etc/hosts
  ```
  ```
  more /etc/sysconfig/network
  ```
  ```
  more /etc/sysconfig/network-script
  ```
  ```
  more /etc/resolv.conf
  ```
  ## Network Commands
  * **ping**
  * **ifconfig**
  * **ifup or ifdown**
  * **netstat**: It tells you the gateway and how your traffic is flow from interface
  * **tcpdump**: It traces every single transation that leaving and coming into system.
  ```
  ping www.google.com   //To check the server is reachable or not
  ```
  ```
  ifconfig
  ```
  ```
  netstat -rnv
  ```
  ```
  tcpdump -i enpos3
  ```
  ## curl and ping commands
  * If you face any issues with the system or server, if your server is not reachable we use these two curl and ping commands to communicate with server.
  * **ping**:
  * if you ping the server ex: google.com, it will comeback with IP address you will seee the server is up.
   ```
   ping www.google.com (or) ping 216.58.217.68
   ```
  * **curl**:
  * The curl command is specificly for for URL, if the page is not working then we need this curl command to findout the page is up.
   ```
   curl http://website.com/filename //It will bring you back with some page content
   curl -o http://website.com/filename //here -o means it download a file.
   ```
   ## Secure copy protocol (scp)
   * The secure copy protocol (scp) helps to tranfer files securely from a local to remote host.
   * Default SCP port is "22", similer to SSH
   ```
   scp <file-name> <remote-user>@<remote-serverIP>:/home/kumar
   scp samplefile vinod@192.168.1.58:/home/kumar
   ``` 
   ## rsync- Remote Synchronization
   * **rsync**: Is utility for transferring and synchronizing files within the same computer or to a remote computer
   * It is lot faster than FTP and SCP.
   * Default rsync port is "22", similer to SSH.
   ```
   tar cvf backup.tar .  //tar entire home directory (/home/vinod)
   mkdir /tmp/backups
   rsync -azvh backup.tar /tmp/backups/     //rsync a directory on a local machine.
   ```
   ```
   mkdir /tmp/backups  //create this directory on remote server
   rsync -avz backup.tar vinod@192.168.1.x: /tmp/backups
   ```
   ## system updates and repos
   * **yum**: centos, redhat
   * **apt-get**: other linux distributions(ubuntu,debian)
   * **rpm**: RedHat Package Manager
   ```
   yum install nginx -y //It checks the package is available loacally iof not it will install from outside(through internet)
   ```
   ```
   yum remove nginx -y      //It removes the package
   ```
   ```
   rpm -qa     //It will check package is available are not locally
   ```
   ## Hostname or IP lookup
   * **nslookup**: It gives IP address and domain name or DNS lookup.
   ```
   nslookup www.facebook.com
   ```
   ```
   dig www.google.com
   ```
   ## Tracing Network Traffic(traceroute)
   * The **traceroute** command is used to map the journey that a packet of information undertakes from its source to its destination.
   ```
   traceroute www.google.com
   ```
   ```
   netstat -rnv
   ```