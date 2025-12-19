if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add k kak
abbr --add v nvim
set --export MANPAGER "nvim +Man!"
set --export EDITOR nvim

abbr -a b --function projectdo_build
abbr -a r --function projectdo_run
abbr -a t --function projectdo_test
abbr -a p --function projectdo_tool

fish_add_path ~/.cargo/bin
fish_add_path ~/.config/emacs/bin
