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