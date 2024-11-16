# Module-6:Shell Scripting
## Shell
* Interface b/w users and kernel o/s.
* CLI is a shell

```
echo $0  //To find a shell
```
```
cat /etc/shells //available shells
```
```
cat /etc/passwd     //your shell
```
* Linux sh, bash is a shell.
  * **sh**: command line shell
  * **bash(born again shell)**: command line shell
## Shell Script
* A shell script is an executable file containing multiple shell commands that are executed sequentially.
* **shell**:(#! /bin/bash)
* **comments**:(#comments)
* **statements**:(if,while,for,etc.)
* shell script should have an executable permission(ex: -rwx-r-x-r-x) 

## Basic shell script
```
echo    //output to screen
```
```
#! /bin/bash
echo "Hello World"
```
```
./file-name.sh (or) /home/vkumar/myscripts/file-name.sh
```
* write a script for tasks
```
#! /bin/bash
whoami
echo "Hello"
pwd
echo
hostname
echo
ls -ltr
echo
```
* give executable permissions
```
chmod a+x file-name
```
```
./file-name //run the script
```
* Example of variable
```
#! /bin/bash
a=paleti
b=vinod
c=kumar
echo "my first name is $a"
echo "my middle name is $b"
echo "my last name is $c"
```
```
chmod a+x file-name //apply permissions
./file-name //run script
```
* Shell script for input and output
```
#! /bin/bash
echo "hello, I'm vinod"
echo
echo "what is your name?"
read name
echo
echo Hello &name
```
* If, then conditions
```
#! /bin/bash
count=100
if[$count -eq 100]
then
 echo count is 100
else
 echo count is not 100
fi
```
* script for file exists or not in perticuler directory
```
#! /bin/bash
clear
if[-e /home/vinod/sample.txt]   //e: file exist or not
then
 echo "File exist"
else
`echo "File does not exist"
fi
```
* script for "for loop"
  * for: keep running until condition satisfied 
```
#! /bin/bash
fir i in 12345
do
echo "welcome $i times"
done
```
* do-while scripts
  * The while statement continuously executes a block of statements while a perticular condition true or met.
  * Run a script untill 2pm
  ```
  #! /bin/bash
  count-0
  num=10
  while[$count -lt 10]
  do 
    echo$num seconds left to stop this process $1
    sleep 1
    num='expr $count-1'
    count='expr $count+1'
    done
    echo
    echo $1 process is stopped
    ```
## check remote server connectivity
* scrip to check the status of remote hosts
```
#! /bin/bash
# Author: Vinod Kumar   //comment
# Date: dd/mm/yyy
ping -c1 192.168.1.1
    if[$? -eq 0]    //$?-is o/p of all the commands that you ran.
    then
    echo "Ok"
    else
    echo "not Ok"
    fi
done
```
```
./ping-all  //run this script
```