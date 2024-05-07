# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zshrc by Paul van Schaik 2024

#plugins
#source "$HOME/.zsh/spaceship/spaceship.zsh"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh//zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/fuzzy/fuzzy.zsh

#env
alias ls='eza --icons=always --hyperlink --color=always'
alias cat='bat'
alias nv='nvim'
alias v='nvim'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export VISUAL=nvim;
#export TODOIST_API_KEY="$(pass Todoist/API)"
export EDITOR=nvim;
export PATH="/home/paul/.local/share/JetBrains/Toolbox/scripts:/home/paul/.cargo/bin:/home/paul/.local/bin:/home/paul/scripts:/var/lib/flatpak/exports/share:/home/paul/.local/share/flatpak/exports/share:$PATH"
source /home/paul/.config/op/plugins.sh

eval $(thefuck --alias)
