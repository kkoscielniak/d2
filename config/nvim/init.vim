call plug#begin()
Plug 'preservim/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Enable fzf
nnoremap <silent> <C-t> :FZF<CR>

" NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * if argc() | wincmd p | endif
let g:NERDTreeWinPos = "right"

" set indentation to 2 spaces
set tabstop=4       " set TAB width to 4
set shiftwidth=2    " set SPACE indent width to 2
set softtabstop=2   " set the number of columns for a TAB
set expandtab       " expand TABs to spaces

" enable mouse support
set mouse=a
