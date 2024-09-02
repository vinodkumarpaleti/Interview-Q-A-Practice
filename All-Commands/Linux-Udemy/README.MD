# Linux Commands from Udemy course

## Access to linux file system
* To find ipaddress of linux machine
```
ifconfig (or) ip addar
```
* To show username
```
whoami
```
* To show the hostname
```
hostname
```
* Change directory
```
cd /test/
```
* current working directory
```
pwd
```
* list the directories and files
```
ls -l
```
## Creating Files and Directories
* create an empty file
```
touch example-file
```
* Create directory
```
mkdir test-folder
```
* copy directory recursively
```
cp -R test-folder /tmp/test-folder
```
## Finding files and directories
* locate file 
  - It will locate the file within file system
  - We have to update database (ex: updatedb)
  - Also make sure you have mlocate package installed.
```
syn: locate <file-name>  
ex: locate vinod
```
## Softlink and HardLink
* create the soft link
  * The softlink will be removed if the original file removed
```
syn: ln -s <file-path>
ex: ln -s /home/vinod/test
ls -li #shows the inode number
```
* create the hard link
  * The hardlink will not be removed if the original file removed
```
syn: ln <filepath>
ex: ln /home/vinod/test
```