export PATH="$PATH:/Applications/CMake.app/Contents/bin"

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch')'
  fi
}

# PS1="%n@%m %1~ %#" # default
PS1="%B%U%F{cyan}%n%f%u@%F{214}%m%f in %1~%b %# "

alias ll="ls -al"

# git
alias gcb="git checkout -b"
alias gs="git status"
alias gl="git log --oneline"
alias gc="git commit -m"
alias gp="git pull --rebase"
alias gb="git branch"

# AILabs
alias port-forward-asr="kubectl -n group-asr port-forward svc/transkribera-dev-be-asr-stream-proxy 7001"
alias port-forward-rtmp="kubectl -n group-asr port-forward svc/asr-rtmp 1935"
alias kubeasr="kubectl -n group-asr"
