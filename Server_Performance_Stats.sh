tput setaf 1; echo 'Load CPU'
uptime

echo '-----------------------------------------------------------------------------------------'

tput setaf 2; echo 'Free Memory'
free -h

echo '-----------------------------------------------------------------------------------------'

tput setaf 3;echo 'Free Disk'
df -h

echo '-----------------------------------------------------------------------------------------'

tput setaf 4;echo 'Top 5 processes by CPU usage'
ps -aux --sort=-pcpu | head -n 6  

echo '-----------------------------------------------------------------------------------------'
tput setaf 5; echo 'Top 5 processes by memory usage'
ps -aux --sort -rss | head -n 6
tput setaf bold; echo 'Mamoosh'
