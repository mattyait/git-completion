#/usr/bin/env bash
echo "source /etc/bash_completion.d/git-completion.sh" >> ~/.bashrc

echo "parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}" >> ~/.bashrc
echo "export PS1='\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ '" >> ~/.bashrc

