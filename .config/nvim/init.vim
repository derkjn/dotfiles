set nocompatible "Turn off compatibility mode
syntax on "Enable syntax highlighting
filetype indent plugin on "Turns on indent and plugin detection for files

set hlsearch "Turn on highlighting for searching

"Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

"Move between split windows more easily
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-l> <C-W>l

set splitbelow
set splitright

set autoindent "When opening a new line and no filetype-specific indenting is enabled, keep the same indent as the line you're currently on. Useful for READMEs, etc.
set nostartofline "Stop certain movements from always going to the first character of a line.

set confirm "Instead of failing a command because of unsaved changes, instead raise a dialogue asking if you wish to save changed files.

set number "Display line numbers on the left
set relativenumber "Use relative numbers


" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab "Exand tabs into spaces

set termguicolors

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" automatically install plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
 Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
 Plug 'pangloss/vim-javascript' "Improved javascript syntax highlighting
 Plug 'mattn/emmet-vim'
 Plug 'yggdroot/indentline'
 Plug 'ap/vim-css-color' "Enable colored highling to CSS colours eg #FFF
 Plug 'tpope/vim-surround'  
 Plug 'airblade/vim-gitgutter' "Show the Git diff in the gutter
 Plug 'karlrombauts/vim-material'
 Plug 'vim-airline/vim-airline' "Enable airline status bar at the bottom of the screen
 Plug 'vim-airline/vim-airline-themes'
 Plug 'tpope/vim-fugitive' "Git wrapper for vim
 Plug 'mileszs/ack.vim' "GREP replacement
 Plug 'posva/vim-vue'
 Plug 'tpope/vim-commentary'
call plug#end()

" Dark
let g:material_style='oceanic'
set background=dark
colorscheme vim-material

" Airline
let g:airline_theme='material'
let g:airline_section_b="%{FugitiveStatusline()}"
let g:gutentags_ctags_executable = '/usr/local/Cellar/universal-ctags/HEAD-0de02b6/bin/ctags'


" Enable fuzzy find
set rtp+=/usr/local/opt/fzf

map <C-P> :FZF<CR>

