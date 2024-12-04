#!/bin/bash

# this script to monitor your device and see processes.
# this variable for drow line.
drow_line="---------------------"
echo -e "\e[1mCpu Information:\e[0m"
lscpu |grep -E "Architecture|CPU op-mode"

echo $drow_line
echo -e "\e[1mSystem Information:\e[0m"
uname -a |echo "Kernel Name `awk '{print$1}'`"
uname -a |echo "Host Name: `awk '{print$2}'`"
uname -a | echo "Kernel Release: `awk '{print$3}'`"

echo $drow_line
echo -e "\e[1mSystem Status Summary\e[0m"
uptime |echo -e "\e[34m`awk '{print$1,$2,$3,$4,$5}'`\e[0m"
uptime | echo -e "\e[31mThe average load over 1 minute`awk '{print$8}'`\e[0m"
uptime |echo -e "\e[31mThe average load over 5 minutes`awk '{print$9}'`\e[0m"
uptime | echo -e "\e[31mThe average load over 15 minutes`awk '{print$10}'`\e[0m"
 
echo $drow_line
echo -e "\e[1mMemory Usage:\e[0m"
free -h

echo "to show process in your device press enter:" 
echo -e "You can interact with the displayed processes by typing the '!' symbol, followed by the command you want. For example, \nto kill a process: '!kill <PID>'."
read pro && clear

echo "Proces info";ps -eo user,pid,args,pcpu,pmem,stat,start,time,tty --sort=-pcpu  |grep -vE "less|grep -vE|ps -eo"|less 

clear 

