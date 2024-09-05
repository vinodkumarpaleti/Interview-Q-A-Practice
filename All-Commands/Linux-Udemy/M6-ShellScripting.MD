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