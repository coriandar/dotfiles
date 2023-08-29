" add line numbers
set nu
set rnu

" vertical movement centered
nnoremap j jzz
nnoremap k kzz
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" move highlighted
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap H <gv
vnoremap L >gv

" search terms centered
nnoremap n nzzzv
nnoremap N Nzzzv

" delete into void, then paste
vnoremap P "_dP

" never press, disabled
nnoremap Q <Nop>