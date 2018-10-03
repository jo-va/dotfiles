set nocompatible
" Helps force plugins to load correctly when it is turned back on below
filetype off

" Plugins
packadd! onedark.vim

" Syntax highlighting and scheme
syntax on
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1
let g:airline_theme = 'onedark'
colorscheme onedark
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

" Blink cursor on error instead of beeping (grr)
set visualbell

" Airline
let g:airline#extensions#tabline#enabled = 1

filetype plugin indent on

let mapleader = ","

set encoding=utf-8 " displays the file in utf8
set fileencoding=utf-8 " writes the file in utf8
set hidden " allow hidden buffers
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast " rendering
set ruler " show file stats
set backspace=indent,eol,start
set laststatus=2 " status bar
set number
set undofile
set modelines=0
set colorcolumn=120 " show colored column
set clipboard=unnamed
set pastetoggle=<f2>
set history=1000

" Indentation
set tabstop=4 " show existing tab with 4 spaces
set shiftwidth=4 " when indenting with '>', use 4 spaces
set softtabstop=4
set expandtab " on pressing tab, insert spaces
set autoindent
set smartindent

" word wrap without line breaks
set wrap
set linebreak
set nolist " list disables linebreak
set textwidth=0
set wrapmargin=0 " wrap lines when coming within n characters from side

" vim navigation with file tabs
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Cursor motion
set scrolloff=3 " keep 3 lines below and above cursor
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Last line
set showmode
set showcmd

" Searching
set hlsearch " highlight search
set incsearch
set showmatch
set ignorecase " Search is case insensitive if query is all lowercase
set smartcase " If a character is uppercase, then search is case sensitive

" Split to the right and below
set splitright
set splitbelow

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" set list " To enable by default

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Save file when losing focus
au FocusLost * :wa

" NerdTree
autocmd VimEnter * NERDTree " Open the tree when booting vim
autocmd VimEnter * wincmd p " but don't focus it
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp'] " ignore these files
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Toggle nerdTree
map <leader>t :NERDTreeToggle<CR>
" Locate focused file in nerdTree
nmap <leader>j :NERDTreeFind<CR>
" Clear search
nnoremap <leader><space> :noh<CR>
" Reload vimrc
map <leader>s :source ~/.vimrc<CR>
" Edit vimrc
map <leader>v :e ~/.vimrc<CR>
" Map the escape key
inoremap jk <Esc>
" Toggle tabs and EOL
map <leader>l :set list!<CR>
" Reopen previously open file
nnoremap <Leader><Leader> :e#<CR>
