# user dependent .bashrc file
[[ "$-" != *i* ]] && return

# aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# prompt format
PS1='\n┌────┤\w│\n└─■ '
