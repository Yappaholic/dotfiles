def start_zellij [] {
		if ZELLIJ not-in ($env | columns) {
        zellij attach -c
		}
}

start_zellij

alias kk = kak
alias ff = fastfetch
alias of = onefetch
alias node = bun run --bun


source ~/.cache/carapace/init.nu
source ~/.zoxide.nu
source ~/.oh-my-posh.nu
