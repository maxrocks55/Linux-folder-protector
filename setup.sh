read -p "Are you sure you want to proceed? (y/n): " choice
case "$choice" in
  y|Y ) ans=1; echo "Proceeding...";;
  n|N ) echo "Operation canceled."; exit 1;;
  * ) echo "Invalid input. Please enter y or n."; exit 1;;
esac

if [ $ans -eq 1 ]; then
    sudo chown root:root /var/
    sudo chown root:root /tmp/
    sudo chown root:root /boot/
    sudo chown root:root /dev/
    sudo chown root:root /lib32/
    sudo chown root:root /libx32/
    sudo chown root:root /lib64/
    sudo chown root:root /run/
    sudo cp $(pwd)/lock.sh /usr/bin/
    sudo chmod +x /usr/bin/lock.sh
else
    echo "ok, stopping"
fi
