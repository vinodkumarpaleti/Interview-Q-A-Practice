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
ls -l | less test-file
ls -l | head test-file
ls -l | tail test-file
```
## Filters and Text processing commands
* cut : It allows you to cut the o/p.
* awk : It allows you to list by the column
* grep : It allows you to search by the keywords
* sort : It allows you to sortout the output in alphabetical order.
* uniq : It eliminates the duplicates
* wc (word count) : It tells total number of words , letter, and lines of a file.
```
cut -c1 sample
cut -c1 2,4 sample
cut -c1, 2,4 sample
cut -c1-3
cut -c1-3 sample
cut -b1-3 sample
cut -b1-3 /home/ec2-user/test1/sample
cut -d: -f 6 /etc/passwd
cut -d: -f 6-7 /etc/passwd
ls -l | cut -c2-4
```
## awk: It is a utility designed for data extraction. i.e extract fields from a file.
```
awk --version
```
* print the first column of a file
```
awk '{print $1}' sample
```
* print the second column of a file
```
awk '{print $2}' sample
```
* list 1st and 3rd column of o/p
```
ls -l | awk '{print $1, $3}' sample
```
* prints last column of o/p
```
ls -l | awk '{print $NF}' sample
```
* search for a spicific word
```
awk '/pipeline/ {print}' sample
```
* Prints first field of a file '/etc/passwd'
```
awk -F: '{print $1}' /etc/passwd
```
* Replace the word fields
```
echo "hi vinod" | awk '{$2 = "Adam"; print $0}'
```
* get lines more than 15 byts
```
awk 'length ($0) > 15' sample
```
```
ls -l | awk '{print NF}'
```
## grep (global regular expression print)
* process line by line and prints any lines which match a specified pattern
```
grep --version
```
* It search for a keyword GitHub
```
grep GitHub sample
```
* It gives no.of times the word is repeated
```
grep -c GitHub sample
```
* It search for the keyword vkumar
```
grep vkumar /etc/vkumar
```
* It search for the keyword ec2-user
```
grep ec2-user /etc/passwd
```
* search for a keyword and ignores the case-sensitivity
```
grep -i github sample
```
* Display matched number and its line numbers
```
grep -n github sample
```
* It displays everything but not the keyword
```
grep -v GitHub sample
```
* Search for a keyword and prints the first field
```
grep GitHub sample | awk '{print $1}'
```
## sort/uniq
* sort command sorts in alphabetical order
```
sort -r sample-file     //sort in reverse alphabrtical order
```
```
sort -k2 sample-file    //sort by field number
```
* uniq command filters out the repeated or duplicate lines
```
uniq sample
```
## WC - Word Count
* It reads either standard input or list of files and genarates newline, word, and byte count. 
```
wc --version
```
```
wc sample-file      // It get the file line count, word count and byte count.
```
```
wc -l sample        // It gives no of lines in a file
```
```
wc -w sample        // It gives no.of words in a file
```
```
wc -c sample        // It gives no.of byts
```
```
ls -l | wc -l       // no of files
```
```
grep GitHub | wc -l sample      // get the no of keyword lines
```
## Comare files (diff, cmp)
* diff : It compares line by line
```
diff sample-file1 sample-file2
```
* cmp : It compares byte by byte
```
cmp sample-file1 sample-file2
```