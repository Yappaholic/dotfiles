if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add k kak
abbr --add v nvim
abbr --add fj "fj -H codeberg.org"
abbr --add mango "WLR_DRM_NO_ATOMIC=1 dbus-launch --exit-with-session mango"
set --export MANPAGER "nvim +Man!"
set --export EDITOR kak

#set --export DOTNET_ROOT "/opt/dotnet-sdk-bin-9.0"

alias ls eza
abbr --add gss "sudo guix system -L ~/.config/guix-config reconfigure ~/.config/guix-config/config/system/system.scm"
abbr --add ghs "guix home -L ~/.config/guix-config reconfigure ~/.config/guix-config/config/system/home.scm"

fish_add_path ~/.cargo/bin
fish_add_path ~/.config/emacs/bin
#fish_add_path /opt/android-sdk/cmdline-tools/latest/bin
#fish_add_path /opt/flutter/bin
#fish_add_path ~/.dotnet/tools
#set --export ANDROID_HOME /opt/android-sdk
#set --export ANDROID_NDK_ROOT /opt/android-sdk/ndk/29.0.14206865
#set --export JAVA_HOME "$(java-config -O)"
direnv hook fish | source
set --export HOME_ENVIRONMENT $HOME/.guix-home
fenv source $HOME_ENVIRONMENT/setup-environment
$HOME_ENVIRONMENT/on-first-login
set --export LD_LIBRARY_PATH $LIBRARY_PATH
