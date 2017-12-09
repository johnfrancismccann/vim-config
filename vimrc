" General
" ==============================================================================
let xml_use_xhtml = 1
syntax on
filetype plugin indent on
execute pathogen#infect()
Helptags                                  " example -> :help python
set nocompatible                          " don't need to use vi

" General Remappings
" ==============================================================================
inoremap <leader>e <Esc>l
inoremap <leader>w <Esc>:w<CR>a
inoremap <leader>s <Esc>:w<CR>
nnoremap <leader>s :w<CR> 
nnoremap <leader>q :q<CR>

" Appearance
" ==============================================================================
set number
colorscheme gruvbox
set laststatus=2                          " always show statuslin
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

" Searching
" ==============================================================================
set hlsearch
set incsearch

" Autocompletion
" ==============================================================================
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap <leader>x <C-x><C-o>

" Working with split windows
" ==============================================================================
nnoremap <leader>w <C-w>
autocmd WinNew * wincmd = " make split windows equal in size (including doc) 
set splitbelow
set splitright

" ctags
" ==============================================================================
map <leader>a :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <leader>f :split <CR>:exec("tag ".expand("<cword>"))<CR>

" Tab navigation
" ==============================================================================
ca tn tabnew

" For spellcheck
" ==============================================================================
set spelllang=en

" Yank 
" ==============================================================================
set clipboard=unnamed

" Spacing
" ==============================================================================
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4           " number of columns used when inserting tab
set tabstop=4               " number of columns displayed for a tab character
set backspace=2
noremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>k

" NERDCommenter
" ==============================================================================
let g:NERDSpaceDelims = 1  " add space after comment delimter 
