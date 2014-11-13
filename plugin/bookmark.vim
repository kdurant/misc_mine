"=============================================================================
" FileName    :	bookmark.vim
" Author      :	kdurant
" Email       :	kdurant0725@gmail.com
" Description :
" Version     :	1.0
" LastChange  :	2014-10-15 14:06:08
" ChangeLog   :
"=============================================================================
if !exists('g:bm_path')
    let s:bm_path = '~/PluginConfig/BookMark/'
endif
let g:bm_path = glob(s:bm_path)

if !exists('g:bm_name')
    let g:bm_name = 'bookmark.vim'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"add bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=1 Bookmark call bookmark#add(<f-args>)
function! bookmark#add(bm_name)
    if !empty(readfile(glob(g:bm_path . g:bm_name)))
        let l:old_bm = readfile(g:bm_path . g:bm_name)
    endif
    if a:bm_name == '%'
        let l:new_bm = [expand('%'), expand('%:p')] + l:old_bm
    else
        let l:new_bm = [a:bm_name, expand('%:p')] + l:old_bm
    endif
    call writefile(l:new_bm, glob(g:bm_path . g:bm_name))
    set autochdir
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"build window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map     <M-d>a  :call bookmark#open()<cr>
function! bookmark#open()
    if bufname('%') == 'BookMark'
        exe "close"
    endif
    let s:get_bm_name = 0
    let s:get_bm_path = 0
    silent execute 'to '.10.'split BookMark'
    setlocal buftype=nofile
    setlocal bufhidden=wipe
    setlocal filetype=bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"key map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    map <buffer> q      :quit<cr>
    map <buffer> <esc>  :quit<cr>
    map <buffer> <tab>  :call bookmark#del()<cr>
    map <buffer> t      :call bookmark#use("tabnew")<cr>
    map <buffer> <cr>   :call bookmark#use("enter")<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"open bookmark at new window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    setlocal modifiable
    call setline(1, "BookmarkName\t\t\tBookmarkPath")
    let s:line_num = 2
    for key in readfile(glob(g:bm_path . g:bm_name)) "s:old_bm
        if key =~ '\w*\/\w*'
            let s:get_bm_path = 1
            let s:bm_path = key
        else
            let s:get_bm_name = 1
            let s:bm_name = key
        endif
        if s:get_bm_path == 1 && s:get_bm_name == 1
            let s:get_bm_name = 0 | let s:get_bm_path = 0
            let s:bm_name = bookmark#align(s:bm_name)
            call setline(s:line_num, s:bm_name . s:bm_path)
            let s:line_num = s:line_num + 1
        endif
    endfor
    exe "normal 2gg"
    setlocal nomodifiable
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"build keymap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:bulidkeymap()
    "code
endfunction

function! bookmark#del()
    setlocal modifiable
    let s:choice = confirm("Delete bookmark?", "&Yes\n&No")
    if s:choice == 1
        let s:old_bm = readfile(glob(g:bm_path . g:bm_name))
        for key in s:old_bm
            if key == substitute(getline('.'), '\s\+.*', '', '')
                call remove(s:old_bm, index(s:old_bm,key))
                call remove(s:old_bm, index(s:old_bm,key) + 1)
                break
            endif
        endfor
        call writefile(s:old_bm, glob(g:bm_path . g:bm_name))
        exe "normal dd"
    endif
    setlocal nomodifiable
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"build keymap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! bookmark#use(action)
    let s:filename = substitute(getline('.'), '\w\+.\w\+\s\+', '', '')
    silent exe  "close"
    if a:action == "tabnew"
        silent exe "tabnew " . s:filename
    elseif a:action == "enter"
        silent exe "e " . s:filename
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"align bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! bookmark#align(bm_name)
    while strlen(s:bm_name) < 24
        let s:bm_name = s:bm_name . " "
    endw
    return s:bm_name
endfunction
