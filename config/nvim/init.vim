call plug#begin()
Plug 'preservim/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

nnoremap <silent> <C-t> :FZF<CR>

" NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * if argc() | wincmd p | endif
let g:NERDTreeWinPos = "right"
