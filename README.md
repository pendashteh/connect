# gvfsync
Sync internal and external files on your Android machine (or any device that uses GVFS) with your Linux machine.

## What is GVFS
GVFS stands for **GNOME Virtual File System**. It's used to mount the content of your Android device when you connect via a USB cable. To access both internal storage and the SD card. Cameras also use this filesystem to mount their content.

## How does `gvfsync` help me?
It helps you get the path to the mount directory (which is not that easy to find!)
```
$ gvfs path
/run/user/1000/gvfs/mtp:host=%5Busb%3A001%2C075%5D
```
You can also get a shell directly on that directory.
```
$ gvfs shell
async> ls -a
.  ..  Card  Phone
```
And, mainly, it helps you sync the content to a local path on your host machine.
```
$ gvfs sync Card/DCIM/
rsync -av /run/user/1000/gvfs/mtp:host=%5Busb%3A001%2C075%5D/Card/DCIM/ /home/user/.async/data/Card/DCIM
Are you sure? [Y/n]
```
