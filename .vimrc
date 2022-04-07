set hlsearch
set cursorline
set tabstop=4
set shiftwidth=4
set backspace=2
set nocompatible
set showmatch
set autoindent
set ruler
set noshowmode
set nu
colorscheme iceberg
set background=dark
syntax on
hi LineNr cterm=bold ctermfg=Grey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=LightBlue ctermbg=NONE
filetype indent on
filetype on
filetype plugin on
set history=100

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/preservim/tagbar'
call plug#end()





" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
let mapleader = ","

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the ctrl+a key to toggle NERDTree open and close.
nnoremap <c-a> :NERDTreeToggle<cr>

" Shortcutting split navigation"
map<c-h> <c-w>h
map<c-j> <c-w>j
map<c-k> <c-w>k
map<c-l> <c-w>l

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
let NERDTreeMinimalUI = 1
" }}}


"setting of vim-airline"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
