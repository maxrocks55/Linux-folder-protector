## Linux-folder-protector
--------------
prevents destructive commands like the infamous "rm -rf /*" from working by locking important / system directories


#Steps:
-------------
cd /path/to/Linux-folder-protector
#
chmod +x setup.sh
#
sudo ./setup.sh
#

then, after that, ./lock.sh [path to the directory you want locked] will lock it
