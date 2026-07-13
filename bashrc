# ~/.bashrc: executed by bash(1) for non-login shells.

## If not running interactively, don't do anything
### mod by ArO (c)2026 for distro Manjaro
[[ $- != *i* ]] && return

# Poprawiona zmienna PATH
export PATH="/home/$USER/.local/bin:/home/$USER/sh:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

# Historia poleceń
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Dynamiczne dostosowanie okna terminala
shopt -s checkwinsize

# Kolory w terminalu
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
fi

# Ustawienie prompta (PS1)
if [ "$color_prompt" = yes ]; then
    PS1="\[\e[1;31m\]┌─[\[\e[0;39m\]\u\[\e[1;33m\]@\[\e[1;96m\]\h\[\e[1;31m\]]─[\[\e[0;32m\]\w\[\e[1;31m\]]\n└──╼ \[\e[01;33m\]\$ \[\e[0m\]"
else
    PS1="┌──[\u@\h]─[\w]\n└──╼ \$ "
fi

# Kolory dla komendy `man`
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'

# Wczytanie aliasów z osobnego pliku
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Informacje przy starcie terminala
echo -e "\e[1;36m--------------------------------------------------\e[0m"
echo -e "\e[1;33mArO (c)2026 - modyfikacje i dodatki do systemu!\e[0m"
echo -e "\e[1;36m--------------------------------------------------\e[0m"
pwd
date
curl -s ifconfig.co/ip

