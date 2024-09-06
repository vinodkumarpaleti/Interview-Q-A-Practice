# Module-8: Disk Management and Run Levels
## Disk Partition
* commands for disk partition
 ```
 df
 ```
 ```
 fdisk
 ```
 ```
 fdisk -l
 ```
 ## File system check (fsck and xfs_repair)
 * **'fsck'** is used to check and repair linux filesystem.(ext2, ext3, ext4)   //ext=extension
 * **'xfs_repair'** is used to check and repair linux file systems for 'xfs' file system types.
 ```
 df -T  //It checks which file system you are using 
 ```
 ```
 fsck /dev/sbd1     //It is for ext file system
 ```
 ```
 xfs_repair /dev/sbd1
 ```
 ```
 dd if = /dev/sbd1 of=/root/sda1.img    //To backup or copy the disk partition
 ```
 * restoring the image file to another machine after coping the .img.
 ```
 dd if=/rrot/sda1.img of=/dev/sbd3
 ```