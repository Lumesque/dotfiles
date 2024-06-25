set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

let mapleader = "\<Space>"

function! MoveToTop()
    normal! kmmjdd{p`m
endfunction

nnoremap <leader>m1 :call MoveToTop()<CR>

function! OpenWindow()
    let winid = popup_create('hello, world!', {'moved': 'any'})
endfunction

nnoremap <leader>p1 :call OpenWindow()<CR>
