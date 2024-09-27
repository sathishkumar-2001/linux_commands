pwd: Print Working Directory

ls: List Directory Contents
ls -l  # long format listing
ls -a  # include hidden files

cd: Change Directory

cd /path/to/directory
cd ..  # move up one directory
cd ~   # move to home directory
cd -   # move to previous directory

touch: Create an Empty File

mkdir: Make Directories
mkdir -p /path/to/directory  # create nested directories

rm: Remove Files or Directories
rm -r directory_name  # remove directory and its contents

cp: Copy Files or Directories
cp -r source_directory destination  # copy directories

mv: Move or Rename Files or Directories
mv file_name /new/path

File Viewing Commands
cat: Concatenate and Display Files
cat filename

less: View File Contents One Page at a Time
less filename

head: View the First 10 Lines of a File
head -n 20 filename  # first 20 lines

tail: View the Last 10 Lines of a File
tail -n 20 filename  # last 20 lines

File Permissions
chmod: Change File Permissions
chmod 755 filename  # rwxr-xr-x
chmod +x filename  # add execute permission

chown: Change File Owner
chown user:group filename

Networking Commands
ping: Check Network Connectivity
ping hostname

ifconfig: Configure Network Interfaces
ifconfig
netstat: Network Statistics
netstat -tuln

Process Management
ps: View Processes
ps aux  # detailed view

top: Display Linux Tasks
top

kill: Terminate Processes
kill PID
kill -9 PID  # force kill

System Information
uname: Print System Information
uname -a

df: Report File System Disk Space Usage
df -h

du: Estimate File Space Usage
du -h filename
du -sh directory_name  # summarize

free: Display Memory Usage
free -h

echo: Display a Line of Text
echo "Hello, World!"

date: Display or Set the System Date and Time
date

whoami: Display the Current User
whoami

history: Display Command History
history

package managers for each distribution
ubuntu,debian - apt
Fedora - dnf
centos - yum
