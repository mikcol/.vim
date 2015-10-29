export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
for file in ~/.{path,bash_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# Git branch in prompt.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
