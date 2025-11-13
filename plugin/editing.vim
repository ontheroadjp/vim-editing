"--------------------------------------
" Redo
"--------------------------------------
nnoremap <S-u> <C-r>

"--------------------------------------
" Enable 'I' and 'A' in visual line mode
"--------------------------------------
function! s:force_blockwise_visual(next_key)
    if mode() ==# 'v'
        return "\<C-v>" . a:next_key
    elseif mode() ==# 'V'
        return "\<C-v>0o$" . a:next_key
    else  " mode() ==# "\<C-v>"
        return a:next_key
    endif
endfunction
vnoremap <expr> I  <SID>force_blockwise_visual('I')
vnoremap <expr> A  <SID>force_blockwise_visual('A')

"--------------------------------------
"Function to enter insert mode by adding a blank line above the current line.
"--------------------------------------
function! AddLineAbove() abort
  "Get current line number
  let lnum = line('.')
  " append(0, '') for the first line, otherwise lnum-1
  if lnum == 1
    call append(0, '')
  else
    call append(lnum - 1, '')
  endif
  "Move cursor to added line and insert mode
  normal! k$
  " startinsert
endfunction
nnoremap <silent> 88 :call AddLineAbove()<CR>

"--------------------------------------
" insert brank line to under cursor
"--------------------------------------
nnoremap <silent> 99 :<C-u>call append(expand('.'), '')<CR>j
nnoremap <silent> 00 :<C-u>call append(expand('.'), '')<CR>j

"--------------------------------------
" insert two brank line and to be inline mode
"--------------------------------------
nnoremap <silent> 0i :<C-u>call append(expand('.'), '')<CR>o
nnoremap <silent> 9i }:<C-u>call append(expand('.'), '')<CR>o
nnoremap <silent> 8i {O<CR>

""--------------------------------------
"" These are setted in iTerm2 preferences at profile->keys
"" They are important for pressing Ctrl + Shift key-bindings
"" vim couldn't catch Ctrl + Shift same time
"" So, iTerms send specific charactor when press Ctrl + Shift
""--------------------------------------
"map ✠ <c-cr>
"imap ✠ <c-cr>
"map ✢ <C-S-CR>
"imap ✢ <C-S-CR>
"
"" add a blank line under the cursor line
"nnoremap <C-CR> mzo<ESC>`z
"inoremap <C-CR> <End><CR>
"
"" add a blank line above the cursor line
"nnoremap <C-S-CR> mzO<ESC>`z
"inoremap <C-S-CR> <Home><CR><Up>
"
"" Move Single line under the cursor
"" nnoremap <C-S-Up> "zdd<Up>"zP
"" noremap <C-S-Down> "zdd"zp
""
"" Move Multi lines under the cursor
"" vnoremap <C-S-Up> "zx<Up>"zP`[V`]
"" vnoremap <C-S-Down> "zx"zp`[V`]
"
