set path+=**
set wildmenu

" Plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'lambdalisue/vim-fullscreen'
"Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
"Plug 'github/copilot.vim'

" Language framework related plugins
Plug 'habamax/vim-godot'
Plug 'rust-lang/rust.vim'
Plug 'ron-rs/ron.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mrk21/yaml-vim'
Plug 'adamclerk/vim-razor'
Plug 'OmniSharp/omnisharp-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'honza/vim-snippets'
Plug 'morgsmccauley/vim-react-native-snippets'
Plug 'leafOfTree/vim-svelte-plugin'

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nightsense/rusticated'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'mhartington/oceanic-next'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

call plug#end()

set t_Co=256

"if (has("termguicolors"))
    "set termguicolors
"end

syntax enable
"colorscheme dracula
"colorscheme rusticated
colorscheme gruvbox
"colorscheme PaperColor
"colorscheme nord
"colorscheme happy_hacking
"colorscheme OceanicNext

"set background=light " Setting light mode
"set background=dark " Setting dark mode

" Use these settings with dracula for the best results
"hi Visual     guifg=#282A36 guibg=#F1FA8C gui=none
"hi CursorLine guifg=none guibg=#191970
"hi Cursor     guifg=#191970 guibg=#41FF41

" Nice with gruvbox
"highlight Normal ctermbg=black guibg=#000000


hi Normal ctermbg=none guibg=none
hi NonText ctermbg=none guibg=none
hi EndOfBuffer ctermbg=none
hi clear LineNr
hi clear SignColumn

" Visible comments
highlight Comment ctermfg=yellow guifg=yellow

" Sensible tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

set nowrap

" Searching
set smartcase
set ignorecase
set incsearch
set noerrorbells
set scrolloff=12
set sidescrolloff=12
set signcolumn=yes
set colorcolumn=100
set nohlsearch
set mouse=a

hi ColorColumn ctermbg=darkred guibg=#cc3333


filetype plugin on

" Dart
let g:dart_style_guide = 4
let g:dart_format_on_save = 1

" lens.vim
let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

" harpoon.vim

" Custom keybinds
nnoremap <space> <nop>
let mapleader = ' '

nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>vr :vertical resize 30<CR>
nnoremap <silent> <leader>r+ :vertical resize +10<CR>
nnoremap <silent> <leader>r- :vertical resize -10<CR>
nnoremap <silent> <c-x> ic-x<esc><CR>


" Nerdtree stuff
nnoremap <silent> <leader>pn :NERDTree<enter>
nnoremap <silent> <leader>pt :NERDTreeToggle<enter>
nnoremap <silent> <leader>pv :NERDTreeFind<CR>


" Tabs
nnoremap <silent> <leader>t gt
nnoremap <silent> <leader>T gT
nnoremap <silent> <leader>n :tabnew<CR>
nnoremap <silent> <leader>N :tabclose<CR>

" Because I kinda miss emacs sometimes
nnoremap <silent> <leader>0 :close<CR>
nnoremap <silent> <leader>1 :only<CR>
nnoremap <silent> <leader>2 :split<CR>
nnoremap <silent> <leader>3 :vsp<CR>

set splitbelow
set splitright

" vim-fullscreen neovim-qt config
"let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
"let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"

" Neovide Config
"let g:neovide_fullscreen=v:true
let g:neovide_cursor_vfx_mode = "railgun"


"autocmd VimEnter * FullscreenStart
"map <silent> <F11> :FullscreenToggle<CR>

set autoread
set number
set relativenumber
tnoremap <Esc> <C-\><C-n>
set ttimeoutlen=100

set cursorline


au FileType rust nmap <leader>r :Format<CR>

autocmd FileType rust let b:coc_root_patterns = ['Cargo.toml']


set guifont=DejaVu\ Sans\ Mono:h12
map <leader><F1> :GuiFont! Source\ Code\ Pro:h14<CR>
map <leader><F2> :GuiFont! Source\ Code\ Pro:h12<CR>
map <leader><F3> :GuiFont! Source\ Code\ Pro:h10<CR>
map <leader><F4> :GuiFont! Source\ Code\ Pro:h8<CR>

map <F7> :e ~/.config/nvim/init.vim<CR>
map <F8> :e ~/notes/<CR>

" Highlight TODO, FIXME, NOTE, etc.
if has('autocmd') && v:version > 701
    augroup todo
        autocmd!
        autocmd Syntax * call matchadd(
                    \ 'Debug',
                    \ '\c\v\W\zs<(NOTE|INFO|IDEA|TODO|FIXME|CHANGED|XXX|BUG|HACK|TRICKY|INCOMPLETE)>'
                    \ )
    augroup END
endif

" coc-snippets

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)


" Just COC from here

let g:coc_global_extensions = [
            \ 'coc-tsserver',
            \ 'coc-json',
            \ 'coc-css',
            \ 'coc-tsserver',
            \ 'coc-phpls',
            \]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif




set breakindent
set formatoptions=l
set lbr

set fileformat=unix
set fileformats=unix,dos

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" don't give |ins-completion-menu| messages.
set shortmess+=c


set encoding=UTF-8

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" coc-snippet tab completion
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? coc#_select_confirm() :
      "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"let g:coc_snippet_next = '<tab>'

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>a <Plug>(coc-codeaction)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')


" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`


set statusline=%f               " filename relative to current $PWD
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=%h              " help file flag
set statusline+=%m              " modified flag
set statusline+=%r              " readonly flag
set statusline+=\ [%{&ff}]      " Fileformat [unix]/[dos] etc...
set statusline+=\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})  " last modified timestamp
set statusline+=%=              " Rest: right align
set statusline+=%l,%c           " Position in buffer: linenumber, column, virtual column
set statusline+=\ %P            " Position in buffer: Percentage
"set statusline+=\ %{strftime('%H:%M')} " Clock

set updatetime=100
