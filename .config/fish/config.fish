# Start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end 

# Aliases
alias ls='ls -hF --color=tty'                 # classify files in colour
alias la='ls -a'
alias ll='ls -l'
alias lla='ll -a'
alias tree='tree -C'
alias ta='tree -a'
alias clock='tty-clock -c -C 4 -t -f (date +%d%b%Y)'
alias tmuxkill='tmux kill-session -a'
alias mymenu='cat ~/.mymenu'
alias pacheck='./pacheck.sh'
alias pacup='sudo pacman -Syu'
alias yup='yaourt -Syu --aur'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias screenfetch='screenfetch -c 4, 1'
alias mocp='mocp -T darkdot_theme'

function fish_title
 # no title
end

function fish_greeting
 # no greeting   
end

function fish_prompt
    set -l textcol blue
    set_color $textcol
    echo \n 
    echo -n '┌────┤'
    echo (prompt_pwd)'│'
    echo '└─■ '
end

function fish_right_prompt
    echo (date +%I:%M%p)
end 
