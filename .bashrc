# User dependent .bashrc file
[[ "$-" != *i* ]] && return
 
# Aliases
alias ls='ls -hF --color=tty'                 # classify files in colour
alias la='ls -a'
alias ll='ls -l'
alias lla='ll -a'
alias tree='tree -C'
alias ta='tree -a'
alias clock='tty-clock -c -C 4 -t -f %d%b%Y'
alias tmuxkill='tmux kill-session -a'
alias mymenu='cat ~/.mymenu'
alias pacheck='./pacheck.sh'
alias pacup='sudo pacman -Syu'
alias yup='yaourt -Syu --aur'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias screenfetch='screenfetch -c 4, 1'
alias mocp='mocp -T darkdot_theme'
alias minitube_audio_fix='sudo mv /usr/lib/vlc/plugins/audio_output/libpulse_plugin.so /usr/lib/vlc/plugins/audio_output/libpulse_plugin.so_bak'
alias i3statusconfig='sudo vim /etc/i3status.conf'
alias i3config='vim ~/.i3/config'

#clear
#screenfetch -c 4, 1

PS1='\n┌────┤\w│\n└─■ '
