"=============================================================================
" FileName    :	bookmark.vim
" Author      :	kdurant
" Email       :	kdurant0725@gmail.com
" Description :	
" Version     :	1.0
" LastChange  :	2013-07-28 21:40:46
" ChangeLog   :	
"=============================================================================
if has('win32') || has('win64')
    let g:store_path = 'E:/Dropbox/home/PluginConfig/BookMark'
else
    let g:store_path = '~/PluginConfig/BookMark'
endif
if !exists('g:store_path')
    if has('win32') || has('win64')
        let g:store_path = 'E:/home/PluginConfig/BookMark'
    else
        let g:store_path = '~/PluginConfig/BookMark'
    endif
endif

let g:store_name = 'bookmark.vim'
if !exists('g:store_name')
    let g:store_name = 'bookmark.vim'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"add bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=1 Bookmark call bookmark#add(<f-args>)
function! bookmark#add(bookmark_name)
    if findfile(g:store_name, g:store_path) != ''
        let s:old_bookmark_info = readfile(g:store_path.'/'.g:store_name)
    endif
    if a:bookmark_name == '%'
        let s:new_bookmark_info = [expand('%'), expand('%:p')] + s:old_bookmark_info
    else
        let s:new_bookmark_info = [a:bookmark_name, expand('%:p')] + s:old_bookmark_info
    endif
    exe 'cd ' . g:store_path
    call writefile(s:new_bookmark_info, g:store_name)
    set autochdir
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"build window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap    <M-d>a  :call bookmark#open()<cr>
function! bookmark#open()
    if bufname('%') == 'BookMark'
        exe "close"
    endif
    let s:get_bookmark_name = 0
    let s:get_bookmark_path = 0
    silent execute 'to '.10.'split BookMark'
    setlocal buftype=nofile
    setlocal bufhidden=wipe
    setlocal filetype=bookmark
    setlocal modifiable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"key map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    map <buffer> q      :quit<cr>
    map <buffer> <esc>  :quit<cr>
    map <buffer> <tab>  :call bookmark#del()<cr>
    map <buffer> t      :call bookmark#use()<cr>
    map <buffer> <cr>   :call bookmark#use_cr()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"open bookmark at new window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    call setline(1, "BookmarkName\t\t\tBookmarkPath")
    let s:line_num = 2
    for key in readfile(g:store_path.'/'.g:store_name) "s:old_bookmark_info
        if key =~ '\w*\/\w*'
            let s:get_bookmark_path = 1
            let s:bookmark_path = key 
        else 
            let s:get_bookmark_name = 1
            let s:bookmark_name = key 
        endif
        if s:get_bookmark_path == 1 && s:get_bookmark_name == 1
            let s:get_bookmark_name = 0 | let s:get_bookmark_path = 0
            let s:bookmark_name = bookmark#align(s:bookmark_name)
            call setline(s:line_num, s:bookmark_name . s:bookmark_path)
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
        let s:old_bookmark_info = readfile(g:store_path.'/'.g:store_name)
        for key in s:old_bookmark_info
            if key == substitute(getline('.'), '\s\+.*', '', '')
                call remove(s:old_bookmark_info, index(s:old_bookmark_info,key))
                call remove(s:old_bookmark_info, index(s:old_bookmark_info,key) + 1)
                break
            endif
        endfor
        exe 'cd ' . g:store_path
        call writefile(s:old_bookmark_info, g:store_name)
        exe "normal dd"
    endif
    setlocal nomodifiable
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"build keymap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! bookmark#use()
    let g:bookmark_filename = substitute(getline('.'), '\w\+.\w\+\s\+', '', '')
    silent exe  "close"
    silent exe "tabnew " . g:bookmark_filename
    unlet g:bookmark_filename
endfunction

function! bookmark#use_cr()
    let g:bookmark_filename = substitute(getline('.'), '\w\+.\w\+\s\+', '', '')
    silent exe  "close"
    silent exe "e " . g:bookmark_filename
    unlet g:bookmark_filename
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"align bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! bookmark#align(bookmark_name)
    while strlen(s:bookmark_name) < 24
        let s:bookmark_name = s:bookmark_name . " "
    endw
    return s:bookmark_name
endfunction
