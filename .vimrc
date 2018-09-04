" Joshua Trojniak $MYVIMRC (11/26/2017)
" Plugins {
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Lightline
Plugin 'itchyny/lightline.vim'
" NERDtree
Plugin 'The-NERD-tree'
" L9 Library
Plugin 'L9'
" FuzzyFinder
Plugin 'FuzzyFinder'
" Surround
Plugin 'surround.vim'
" Tabular
Plugin 'Tabular'
" VimWiki
Plugin 'vimwiki'
" Vim-Markdown
Plugin 'Markdown'
" Pandoc
Plugin 'vim-pandoc/vim-pandoc'
" Pandoc-Syntax
Plugin 'vim-pandoc/vim-pandoc-syntax'
" Pandoc-Preview
Plugin 'lynnard/pandoc-preview.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line }
" Colors {
syntax enable           " enable syntax processing
colorscheme molokai_dark
set spell
hi clear SpellBad
hi SpellBad cterm=underline
set cursorline
autocmd InsertEnter * set cuc 
autocmd InsertLeave * set nocuc
hi cursorline cterm=none guibg=black
hi cursorcolumn guibg=black
set termguicolors
" }
" Misc {
set backspace=indent,eol,start
" }
" Spaces & Tabs {
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }
" UI Layout {
set laststatus=2
set noshowmode
set number              " show line numbers
set relativenumber		" show relative line numbers
set showcmd             " show command in bottom bar
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
set wrap
" }
" Searching {
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }
" Folding {
"=== folding ===
set foldmarker={,} 
set foldlevel=0
set foldmethod=marker
" set foldmethod=indent " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
" Sortcut to toggle folds
nnoremap <space> za     
set foldlevelstart=10   " start with fold level of 1
" }
" Line Movement {
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap ; :
nnoremap : ;
inoremap jk <esc>
" }
" Shortcuts {
let mapleader=","
    " Insert Mode
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap < <><ESC>i
    " Markdown Shortcuts
inoremap <leader>ee **<ESC>i
inoremap <leader>bb ****<ESC>hi
inoremap <leader>ln [text](path)<ESC>3b
inoremap <leader>im ![text](path "text")<ESC>6b
inoremap <leader>cc <span sytle="color:blue"></span><ESC>b2hi
inoremap <leader>. > *
inoremap <leader>.. >> *
inoremap <leader>> <C-k>->
    " Normal Mode
nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>g :call RunGoFile()<CR>
nnoremap <leader>tt :NERDTreeToggle<CR>
nnoremap <leader>rrc :so ~/.vimrc<CR>
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fl :FufLine<CR>
nnoremap <leader>fd :FufDir<CR>
nnoremap <leader>mx :silent update<Bar>silent !google-chrome-stable % &<CR>
    "Visual Mode
vnoremap <leader>y "*y
" }
" Custom Functions {
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction
" }
