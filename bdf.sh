
RED='\033[0;31m'
GR='\033[0;32m'
clear
#Change Directory
cd $PREFIX/etc
#Remove Old files
rm bash.bashrc
rm motd

read -p $'\e[1;36m What u Nickname:: \e[0m' name
# Open file descriptor (fd) 3 for read/write on a bash file.
 exec 3<> bash.bashrc
 # Let's print some text to fd 3
echo " PS1='\033[1;32m
━━We━━━Are━━━━BDF 
[$name]==>'

figlet $name | lolcat -a -d 20

shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s compat31
shopt -s compat32
shopt -s compat40
shopt -s compat41
shopt -s no_empty_cmd_completion
shopt -s histverify
shopt -s histappend
shopt -s dirspell
shopt -s direxpand
shopt -s compat43
shopt -s compat32
shopt -s lithist ">&3

 # Close fd 3 
exec 3>&-
echo " $Termux Logo Was Changed Go To New Session To See The New"
