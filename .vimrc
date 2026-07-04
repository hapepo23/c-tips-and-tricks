"Enables syntax highlighting for supported languages.
syntax on 

"filetype detection — Vim recognizes whether you're editing Python, C, HTML, etc.
"plugin loading — loads plugins specific to that filetype.
"automatic indentation rules — each language gets appropriate indentation behavior. 
filetype plugin indent on

"Turns off old Vi compatibility mode.
set nocompatible

"Improves command-line tab completion.
set wildmenu

"Shows absolute line numbers.
set number

"Shows relative line numbers except on the current line.
set relativenumber

"A real tab character (\t) is displayed as 2 spaces wide.
set tabstop=2

">>, <<, or auto-indenting move by 2 spaces.
set shiftwidth=2

"Pressing Tab while editing inserts/removes 2 spaces worth of indentation
set softtabstop=2

"Pressing Tab inserts spaces instead of actual tab characters.
set expandtab

"When you press Enter, the new line keeps the previous line's indentation.
set autoindent

"Adds language-aware indentation for C-like languages.
set smartindent

"Enables mouse support in all modes.
set mouse=a

"Searches ignore case.
set ignorecase

"Overrides ignorecase when your search contains an uppercase letter.
set smartcase

"Shows matches as you type the search.
set incsearch

"Highlights all matches after a search.
set hlsearch

"Switch away from a modified buffer without saving it first.
set hidden

"Use the system clipboard as the default register for copying, pasting, and deleting.
set clipboard=unnamedplus
