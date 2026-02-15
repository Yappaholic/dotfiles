if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add k kak
abbr --add v nvim
set --export MANPAGER "nvim +Man!"
set --export EDITOR kak
set --export DOTNET_ROOT "/opt/dotnet-sdk-bin-9.0"

alias ls eza

fish_add_path ~/.cargo/bin
fish_add_path ~/.config/emacs/bin
fish_add_path /opt/android-sdk/cmdline-tools/latest/bin
fish_add_path /opt/flutter/bin
fish_add_path ~/.dotnet/tools
set --export ANDROID_HOME /opt/android-sdk
set --export ANDROID_NDK_ROOT /opt/android-sdk/ndk/29.0.14206865
set --export JAVA_HOME "$(java-config -O)"
