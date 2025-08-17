let g:editing_iterm2_ctrl_cr = '✠'
let g:editing_iterm2_ctrl_shift_cr = '✢'

if exists('g:loaded_editing') && g:loaded_editing
  finish
endif
let g:loaded_editing = 1

" ---------------------------------------------------------
" Enable 'I' and 'A' in visual line mode
vnoremap <expr> I  editing#force_blockwise_visual('I')
vnoremap <expr> A  editing#force_blockwise_visual('A')

"--------------------------------------------------------------- Editing
" insert brank line to under cursor
nnoremap 00 :<C-u>call append(expand('.'), '')<CR>j

" insert two brank line and to be inline mode
nnoremap 0i :<C-u>call append(expand('.'), '')<CR>o

" Redo
nnoremap <S-u> <C-r>

" For iTerm2, you can customize the characters sent for key combinations.
" For example, in your .vimrc:
" let g:editing_iterm2_ctrl_cr = '✠'
" let g:editing_iterm2_ctrl_shift_cr = '✢'
if has('macunix')
  let s:ctrl_cr = get(g:, 'editing_iterm2_ctrl_cr', '✠')
  let s:ctrl_shift_cr = get(g:, 'editing_iterm2_ctrl_shift_cr', '✢')

  execute 'map ' . s:ctrl_cr . ' <c-cr>'
  execute 'imap ' . s:ctrl_cr . ' <c-cr>'
  execute 'map ' . s:ctrl_shift_cr . ' <C-S-CR>'
  execute 'imap ' . s:ctrl_shift_cr . ' <C-S-CR>'
endif

" add a blank line under the cursor line
nnoremap <C-CR> mzo<ESC>`z
inoremap <C-CR> <End><CR>

" add a blank line above the cursor line
nnoremap <C-S-CR> mzO<ESC>`z
inoremap <C-S-CR> <Home><CR><Up>
