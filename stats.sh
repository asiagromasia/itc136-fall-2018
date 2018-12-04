
#!/bin/bash
#how much disk space has been used(df -h)
diskused=$( df -h | grep ‘/dev/sda1’ | awk ‘{print $5}’ )

#how much memory is free(free -h)
memfree=$( free -mh | grep Mem: | awk ‘{print $7}’ )

#how many connections there are to the current machine(netstat)
connections=$( netstat | grep tcp )

#who is logged in(who)
users=$( who | awk ‘{print $1}’ )
