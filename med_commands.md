File and Directory Operations
find: Search for Files in a Directory Hierarchy
find /path/to/search -name "filename"
find . -type f -name "*.txt"  # find all .txt files in the current directory and subdirectories
find /path -type f -exec grep 'search_term' {} \;  # find and search within files

grep: Search Text Using Patterns
grep "pattern" filename
grep -r "pattern" /path/to/search  # recursive search
grep -i "pattern" filename  # case-insensitive search

sed: Stream Editor for Filtering and Transforming Text
sed 's/old_text/new_text/g' filename  # replace text in a file
sed -n '2,4p' filename  # print lines 2 to 4

awk: Pattern Scanning and Processing Language
awk '{print $1}' filename  # print the first column
awk '/pattern/ {print $0}' filename  # print lines matching the pattern

rsync: Remote Sync - Copy Files and Directories Efficiently
rsync -avz source destination
rsync -avz /source/dir user@remote_host:/destination/dir  # copy to remote host

System Monitoring and Management
htop: Interactive Process Viewer
htop

lsof: List Open Files
lsof
lsof -i :80  # list processes using port 80

iotop: Display I/O Usage by Processes or Threads
sudo iotop

vmstat: Report Virtual Memory Statistics
vmstat 1 5  # display five reports at one-second intervals

dmesg: Print or Control the Kernel Ring Buffer
dmesg | less
dmesg | grep -i error

Disk Usage and Partitioning
fdisk: Partition Table Manipulator for Linux

sudo fdisk -l  # list all partitions
sudo fdisk /dev/sda  # edit partition table of /dev/sda

mkfs: Build a Linux File System
sudo mkfs.ext4 /dev/sdX1  # create ext4 filesystem on partition

mount: Mount a File System
sudo mount /dev/sdX1 /mnt
sudo umount /mnt  # unmount

Networking
ssh: Secure Shell for Remote Login
ssh user@remote_host
ssh -i /path/to/key user@remote_host  # using a specific key

scp: Secure Copy
scp file user@remote_host:/path/to/destination
scp -i /path/to/key file user@remote_host:/path/to/destination

curl: Transfer Data from or to a Server
curl -O http://example.com/file  # download file
curl -I http://example.com  # fetch headers

wget: Non-interactive Network Downloader
wget http://example.com/file
wget -c http://example.com/file  # continue a partial download

User and Group Management
useradd: Create a New User
sudo useradd -m username
sudo passwd username  # set password

usermod: Modify a User Account
sudo usermod -aG groupname username  # add user to group
sudo usermod -d /new/home/dir username  # change home directory

groupadd: Create a New Group
sudo groupadd groupname

chage: Change User Password Expiry Information
sudo chage -l username  # list password expiration info
sudo chage -E 2025-01-01 username  # set expiration date

Package Management (For Debian-based Systems)
apt-get: Advanced Package Tool
sudo apt-get update  # update package list
sudo apt-get upgrade  # upgrade all packages
sudo apt-get install package_name  # install a package
sudo apt-get remove package_name  # remove a package

chmod 
777 - rwxrwxrwx
755 - rwxr-xr-x
700 - rwx------
644 - rw-r--r--0

Scripting
cron: Schedule Jobs to Run Periodically
crontab -e  # edit cron jobs
crontab -l  # list cron jobs
# Example cron job to run a script every day at 2 AM
0 2 * * * /path/to/script.sh

bash: Execute Shell Scripts
bash - bourn again shell
version - 4
# Example script
#!/bin/bash
echo "Hello, World!"
