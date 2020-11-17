function! myspacevim#before()
    let g:NERDTreeGitStatusPorcelainVersion = 1
    let g:vista_sidebar_position = 'vertical topleft'
    let g:vista_default_executive = 'coc'
    let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
    let g:cmake_build_options = ['-j$(nproc --all)']
endfunction

function! myspacevim#after()
    nnoremap <silent> <F4> :GotoHeaderSwitch <CR>
    imap <silent> <F4> <Esc>:GotoHeaderSwitch <CR>
    let g:goto_header_associate_cpp_h = 1
    let g:goto_header_use_find = 1

    nnoremap <silent> <F2> :ALEGoToDefinition <CR>
    imap <silent> <F2> <Esc>:ALEGoToDefinition <CR>

    nnoremap <silent> <F1> :Vista!! <CR>
    imap <silent> <F1> <Esc>:Vista!! <CR>

    autocmd CursorHold * silent call CocActionAsync('highlight')

endfunction
