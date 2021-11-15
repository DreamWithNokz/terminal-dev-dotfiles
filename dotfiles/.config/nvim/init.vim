" general settings
filetype plugin on
syntax on
set nocompatible
set number
set ignorecase
set smartcase
set scrolloff=4
set cursorline
set autoindent
set softtabstop=0 expandtab
set tabstop=2
set shiftwidth=2
set noshowmode

set updatetime=100

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

autocmd BufWritePre * %s/\s\+$//e

nnoremap <C-p> :FZF<CR>
nnoremap <C-E> :NERDTreeToggle<CR>
nnoremap <F1> :TagbarToggle<CR>

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:tagalong_verbose = 1
let g:NERDTreeShowHidden = 1
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head"

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-vinegar'
Plug 'airblade/vim-gitgutter'
Plug 'dyng/ctrlsf.vim'
Plug 'lambdalisue/suda.vim'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'yggdroot/indentline'
Plug 'pechorin/any-jump.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-commentary'
Plug 'dikiaap/minimalist'
Plug 'danilo-augusto/vim-afterglow'
Plug 'ap/vim-css-color'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
call plug#end()

colorscheme minimalist

