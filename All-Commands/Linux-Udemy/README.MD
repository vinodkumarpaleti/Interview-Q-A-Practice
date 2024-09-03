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
## Files and Directory Permissions
* To change the file permissions
```
chmod <file-name>
chmod g-w vinod     //Here we are removing write permission to vinod
chmod a-r vinod     //Here "   "     "     read     "            "
chmod u-w vinod     // Here "   "     "     write    "            "
chmod u+rw vinod    // Here we are adding read and write permissions to the user
chmod g+rw vinod    // Here we are adding read and write permissions to the group
chmod o+rw vinod    // Here we are adding read and write permissions to the others
```
* permissions using numeric mode
```
4=read(r)
2=write(w)
1=execote(x)
chmod ugo+r vinod   // Here we give read permissions to all
chmod 444 vinod     //Here 4- is read access
```
## File Ownership Commands (chown, chgrp)
* Change owner to the file  //Here we changed ownership to file vinod
```
chown root vinod
```
* Change group to the file  //Here we changed group ownership file vinod
```
chgrp root vinod    
```
## File maintence commands (cp, rm, mv, mkdir, rmdir)
* cp : which copies one file to another
* rm : which remove the file
* mkdir : create the directory
* rmdir (or) rm -r : To remove the directory
* chgrp : change the ownership of a file at group level
* chown : change the ownership of a file at user level
```
cp vinod /tmp
mv kumar /tmp
mkdir vinod
rmdir vinod
rm -rf vinod
```
* change ownership of a file
```
sudo chown root test-file
```
* change group permissions
```
sudo chgrp root test-file
```
## File display commands (cat, less, more, head, tail)
* cat : which shows the entire content of a file weather it is one page or more
* more : It shows one page content at a time.
* less : To view the text files on screen at a time.
* head : To get the top 10 lines of the o/p file.
* tail : To get bottom 10 lines of the o/p file.
```
cat test-file
ls -l | more test-file 
ls -l | head test-file
ls -l | tail test-file
ls -l | less test-file
```
