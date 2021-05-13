function! myspacevim#before()
    let g:NERDTreeGitStatusPorcelainVersion = 1
    let g:vista_sidebar_position = 'vertical topleft'
    let g:vista_default_executive = 'coc'
    let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
    let g:cmake_build_options = ['-j$(nproc --all)']

    let g:autoformat_autoindent = 0
    let g:autoformat_retab = 0
    let g:autoformat_remove_trailing_spaces = 0

    augroup Autoformat
        au BufWrite * :Autoformat
        autocmd FileType dockerfile,markdown let b:autoformat_autoindent=0
    augroup END

    let g:localvimrc_ask = 0

    augroup pencil
        autocmd!
        autocmd FileType markdown call pencil#init()
    augroup END

    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'c', 'cpp', 'cmake']
endfunction

function! myspacevim#after()
    nnoremap <silent> <F4> :CocCommand clangd.switchSourceHeader  <CR>
    imap <silent> <F4> <Esc>:CocCommand clangd.switchSourceHeader <CR>
    let g:goto_header_associate_cpp_h = 1
    let g:goto_header_use_find = 1

    nnoremap <silent> <F2> :ALEGoToDefinition <CR>
    imap <silent> <F2> <Esc>:ALEGoToDefinition <CR>

    nnoremap <silent> <F1> :Vista!! <CR>
    imap <silent> <F1> <Esc>:Vista!! <CR>

    autocmd CursorHold * silent call CocActionAsync('highlight')

endfunction
