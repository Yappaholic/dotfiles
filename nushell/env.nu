# Nushell Environment Config File
#
# version = "0.97.1"
bash-env /etc/profile | load-env
$env.ZELLIJ_AUTO_ATTACH = true
$env.PATH = (
  $env.PATH
  | split row (char esep)
	| append /home/savvy/.cargo/bin
  | append /home/savvy/go/bin
  | append /home/savvy/.bun/bin
  | uniq # filter so the paths are unique
)

# Directories to search for plugin binaries when calling register
# The default for this is $nu.default-config-dir/plugins
$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins') # add <nushell-config-dir>/plugins
]

$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
mkdir ~/.cache/carapace
carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
zoxide init nushell | save -f ~/.zoxide.nu
oh-my-posh init nu --config /home/savvy/.config/ohmyposh/zen.toml
