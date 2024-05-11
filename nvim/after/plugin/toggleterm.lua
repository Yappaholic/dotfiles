require("toggleterm").setup {
    open_mapping = [[<A-h>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
    hide_numbers = true,      -- hide the number column in toggleterm buffers
    autochdir = true,         -- when neovim changes it current directory the terminal will change it's own when next it's opened
    start_in_insert = true,
    insert_mappings = true,   -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    persist_mode = true,      -- if set to true (default) the previous terminal mode will be remembered
    direction = 'horizontal',
    close_on_exit = true,     -- close the terminal window when the process exits
    shell = vim.o.shell,
    auto_scroll = true,       -- automatically scroll to the bottom on terminal output
}
