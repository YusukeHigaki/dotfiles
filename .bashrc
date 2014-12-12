# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
#bashのプロンプトの表示
export PS1="[\u@\h \W]\\$ "
# User specific aliases and functions
