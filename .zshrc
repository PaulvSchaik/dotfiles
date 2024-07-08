# zshrc by Paul van Schaik 2024

#history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh/.zhistory

#plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh//zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

#env
alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias cat='bat'
alias nv='nvim'
alias v='nvim'
alias vim='nvim'
alias code='codium'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias cd='z'

#export TODOIST_API_KEY="$(pass Todoist/API)"
export VISUAL=nvim;
export EDITOR=nvim;
export PATH="/home/paul/.config/tmux/plugins/tmuxifier/bin:/home/paul/.local/share/JetBrains/Toolbox/scripts:/home/paul/.cargo/bin:/home/paul/.local/bin:/home/paul/scripts:/var/lib/flatpak/exports/share:/home/paul/.local/share/flatpak/exports/share:$PATH"
source /home/paul/.config/op/plugins.sh

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}

eval "$(thefuck --alias)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(tmuxifier init -)"
