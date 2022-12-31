if [ $(id -un) = root ]; then
PS1='\[\033[1;31m\]\u@\h \W\$\[\033[0m\] '
else
PS1='\[\033[1;32m\]\u@\h \W\$\[\033[0m\] '
fi
