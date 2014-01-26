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
alias lab='cd $HOME/Dropbox/Lab/Program/OfficialEdition'
alias abaku='defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder'
alias oshinobi='defaults delete com.apple.finder AppleShowAllFiles && killall Finder'
alias opdl='cd ~/SDN/controller/opendaylight/distribution/opendaylight/target/distribution.opendaylight-osgipackage/opendaylight/'

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/usr/local/bin:$PATH:/usr/local/sbin"
export PATH=$PATH:$JAVA_HOME/bin
export TERM=xterm-256color
export _JAVA_OPTIONS=
#-Dfile.encoding=utf-8
export PS1="\W $ "
#export LANGUAGE=en_US.UTF-8
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home/
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home/
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/
