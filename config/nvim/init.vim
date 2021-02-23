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

" set indentation to 2 spaces by default
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
