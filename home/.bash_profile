PATH=$PATH:/usr/local/Cellar/smlnj/110.73/libexec/bin
PATH=$PATH:/Developer/android-sdk-macosx/tools
PATH=$PATH:/usr/local/mysql/bin
PATH=$PATH:/usr/local/lib/ruby/gems/2.0.0/gems/homesick-0.9.8/bin
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias javac='javac -J-Dfile.encoding=utf-8'
alias home='cd $HOME'
alias mysql='mysql -u root -p'
alias cot='open -a CotEditor'
alias ls='gls --color -AFh'
alias ll='gls --color -slhAF'
alias lss='gls --color -AFh | grep "@"'
alias ld='gls --color -AFh | grep "/"'
alias mvim='mvim -p --remote-tab-silent'
alias psql='psql -U postgres -p 5432'
alias lab='cd $HOME/Dropbox/Lab/Program'

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/usr/local/bin:$PATH:/usr/local/sbin"
export TERM=xterm-256color
export PS1="\W $ "
