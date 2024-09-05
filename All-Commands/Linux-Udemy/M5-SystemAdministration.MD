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
* sudo : If you do not have root privilages, but you still need to run certain commands use sudo followed by command.
* visuso: It edits sudoers file(wheel group)
```
su - <user-name>
su - vinod
```
## monior users