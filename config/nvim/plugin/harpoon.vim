lua require("oliman")

" Terminal commands
" asdf is first through fourth finger left hand home row.
" This just means I can crush, with opposite hand, the 4 terminal positions
"
" These functions are stored in harpoon.  A plugn that I am developing
nnoremap <silent><leader>f :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-s> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <silent><C-j> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><C-k> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><C-l> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><C-ø> :lua require("harpoon.ui").nav_file(4)<CR>
"nnoremap <silent><leader>ta :lua require("harpoon.term").gotoTerminal(1)<CR>
"nnoremap <silent><leader>ts :lua require("harpoon.term").gotoTerminal(2)<CR>
"nnoremap <silent><leader>cd :lua require("harpoon.term").sendCommand(1, 1)<CR>
"nnoremap <silent><leader>cf :lua require("harpoon.term").sendCommand(1, 2)<CR>
