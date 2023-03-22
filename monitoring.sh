wall  " #Architecture: $(uname -a)
        #CPU physical: $(lscpu | grep "Socket(s)" | awk '{print $2}')
        #vCPU: $(grep -c "processor" /proc/cpuinfo)
        #Memory Usage: $(free -m | awk '$1=="Mem:" {printf"%d/%dMB (%.2f%%)", $3, $2, $3/$2*100}')
        #Disk Usage: $(df -h --total | grep 'total' | awk '{printf"%.2/%dGb (%.2f%%)", %3, $2, %3/%2*100}')
        #CPU load: $(top -bn1 | grep '^%Cpu' | awk '{printf "%.1f%%", $2+$4+$6+$12+$14}')
        #Last boot: $(uptime -s | awk '{print substr($0, 1, length($0)-3)}')
        #LVM use: $(if ($(lsblk | grep -c "lvm" | awk '$6')); then echo yes; else echo no; fi)
        #Connections TCP: $(ss -s | awk '$1=="TCP" {print $2}') ESTABLISHED
        #User log: $(users | wc -l)
        #Network: IP $(hostname -I)($(ip link show | grep 'ether' | cut -b 16-32))
        #Sudo: $(journalctl | grep 'COMMAND' | wc -l) cmd"
