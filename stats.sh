
#!/bin/bash
#how much disk space has been used(df -h)
diskused=$( df -h | grep ‘/dev/sda1’ | awk ‘{print $5}’ )

#how much memory is free(free -h)
memfree=$( free -mh | grep Mem: | awk ‘{print $7}’ )

#how many connections there are to the current machine(netstat)
connections=$( netstat | grep tcp )

#who is logged in(who)
users=$( who | awk ‘{print $1}’ )
echo -en "this is a snap shot of your current system:

 /e34  Disk used: ${diskused}

  free memory: $memfree

  logged in users: $users

  Open internet connections: $connections

"



color info: 

https://misc.flogisoft.com/bash/tip_colors_and_formatting 
