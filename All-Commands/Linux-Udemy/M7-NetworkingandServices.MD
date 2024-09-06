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