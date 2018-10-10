# hg prompt

hg_branch() {
    hg branch 2> /dev/null | awk '{print " ["$1"]"}'
}

# Git prompt

GIT_PROMPT_START="\[\e[36m\]\[\e[m\]\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]"
GIT_PROMPT_END="$(hg_branch)\[\e[32m\]\\$\[\e[m\] "

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Git completion

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
