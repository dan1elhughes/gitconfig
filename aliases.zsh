alias ga='git a'
alias gc='git c'
alias gd='git d'
alias gf='git f'
alias gp='git p'
alias gpf='git pf'

unalias g
g() {
	if [ "$#" -eq 0 ]; then
		git status --short --branch
	else
		git "$@"
	fi
}
