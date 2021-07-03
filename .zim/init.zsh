zimfw() { source /home/cat/.config/.zim/zimfw.zsh "${@}" }
fpath=(/home/cat/.config/.zim/modules/git/functions /home/cat/.config/.zim/modules/utility/functions /home/cat/.config/.zim/modules/git-info/functions ${fpath})
autoload -Uz git-alias-lookup git-branch-current git-branch-delete-interactive git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw coalesce git-action git-info
source /home/cat/.config/.zim/modules/environment/init.zsh
source /home/cat/.config/.zim/modules/git/init.zsh
source /home/cat/.config/.zim/modules/input/init.zsh
source /home/cat/.config/.zim/modules/termtitle/init.zsh
source /home/cat/.config/.zim/modules/utility/init.zsh
source /home/cat/.config/.zim/modules/completion/init.zsh
source /home/cat/.config/.zim/modules/magicmace/magicmace.zsh-theme
source /home/cat/.config/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /home/cat/.config/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/cat/.config/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/cat/.config/.zim/modules/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /home/cat/.config/.zim/modules/k/k.sh
source /home/cat/.config/.zim/modules/zsh-autopair/autopair.zsh
source /home/cat/.config/.zim/modules/zfm/zfm.zsh
source /home/cat/.config/.zim/modules/zsh-z/zsh-z.plugin.zsh
source /home/cat/.config/.zim/modules/fzf-tab/fzf-tab.zsh
source /home/cat/.config/.zim/modules/asciiship/asciiship.zsh-theme
source /home/cat/.config/.zim/modules/powerlevel10k/powerlevel10k.zsh-theme
