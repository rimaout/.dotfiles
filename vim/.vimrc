" Leader Key
let mapleader = ' '
let maplocalleader = ' '

" Indenting settings
set expandtab        " Use spaces instead of tabs for indentation
set tabstop=4        " Set the width of a tab character to 4 spaces
set softtabstop=4    " Set the number of spaces a tab counts for while editing
set shiftwidth=4     " Set the number of spaces to use for each step of indentation
set smarttab         " Insert/delete shiftwidth spaces at line start
set smartindent      " Smart auto-indenting
set autoindent       " Automatically indent new lines

" Line numbers
set number           " Show line numbers
set relativenumber   " Enable relative line numbers
set cursorline       " Highlight the current line
set scrolloff=8         " Keep 8 lines above and below the cursor

" Search settings
set hlsearch         " Highlight all matches of the previous search
set incsearch        " Show matches while typing the search
set ignorecase       " Case insensitive search
set smartcase        " Case-sensitive if search contains uppercase

" Color and Syntax Configuration
syntax enable           " Enable syntax highlighting
set t_Co=256            " Ensure 256 color support
set background=dark     " Prefer dark background

" Careful True Color Configuration
if has('termguicolors')
    set termguicolors   " Enable 24-bit RGB color if supported
endif

" Recommended color scheme options
colorscheme habamax      " A reliable built-in color scheme

" Split behaviors
set splitright       " Open new vertical splits to the right
set splitbelow       " Open new horizontal splits below

" Automatic bracket/quote closing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Safety and Undo
set confirm          " Confirm before closing unsaved files
set undofile         " Undo history is saved even if you close the file

" Line Manipulation
noremap J mzJ`z " Append line below at the end of the current line

" Search Navigation
noremap n nzzzv " Move to next search result and center it
noremap N Nzzzv " Move to previous search result and center it

" Insert Mode Escape
inoremap jj <Esc> " Use jj to escape insert mode

" Copy and Paste Modifications
" Paste without copying the text
xnoremap <leader>p "_dP

" Cut without copying
nnoremap xx "_dd
vnoremap xx "_dd
nnoremap x "_d
vnoremap x "_d

" System Clipboard Operations
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>d "+d
vnoremap <leader>d "+d

" Disable Arrow Keys
noremap <left> :echo "Use h to move!!"<CR>
noremap <right> :echo "Use l to move!!"<CR>
noremap <up> :echo "Use k to move!!"<CR>
noremap <down> :echo "Use j to move!!"<CR>

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Clear Search Highlights
nnoremap <Esc> :nohlsearch<CR>

" Change cursor shape based on mode
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
