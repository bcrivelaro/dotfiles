let mapleader=","

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'

call plug#end()

set number
set updatetime=100
filetype plugin on

set bg=dark
colorscheme PaperColor

" Airline
let g:airline_theme = 'papercolor'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" NerdTree
nnoremap <C-t> :NERDTreeToggle<CR>
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree 
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" NerdCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" FZF
nnoremap <C-p> :FZF<CR>
let g:fzf_layout = { 'down': '25%' }
