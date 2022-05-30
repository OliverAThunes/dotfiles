set path+=**
set wildmenu

" Plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

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
Plug 'preservim/nerdcommenter' " Replace with tpope/commentary?
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
" Plug 'github/copilot.vim'
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-sneak'

" Language framework related plugins
Plug 'habamax/vim-godot'
Plug 'rust-lang/rust.vim'
Plug 'ron-rs/ron.vim'
"Plug 'captbaritone/better-indent-support-for-php-with-html'
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
"Plug 'nightsense/rusticated'
"Plug 'morhetz/gruvbox'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'arcticicestudio/nord-vim'
"Plug 'yorickpeterse/happy_hacking.vim'
"Plug 'mhartington/oceanic-next'
"Plug 'kaicataldo/material.vim', { 'branch': 'main' }

Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

call plug#end()

lua require('oliman')

" lsp config
set completeopt=menu,menuone,noselect


" Sneak
map f <Plug>Sneak_s
map F <Plug>Sneak_S

map t <Plug>Sneak_t
map T <Plug>Sneak_T

set t_Co=256

if (has("termguicolors"))
    set termguicolors
end

let g:javascript_plugin_jsdoc = 1

let g:material_terminal_italics = 1
let g:lightline = { 'colorscheme': 'dracula' }

syntax enable
colorscheme dracula
"colorscheme material
"colorscheme rusticated
"colorscheme gruvbox
"colorscheme PaperColor
"colorscheme nord
"colorscheme happy_hacking
"colorscheme OceanicNext

"set background=light " Setting light mode
"set background=dark " Setting dark mode

" Use these settings with dracula for the best results
hi Visual     guifg=#282A36 guibg=#F1FA8C gui=none
hi CursorLine guifg=none guibg=#191970
hi Cursor     guifg=#191970 guibg=#41FF41

" Nice with gruvbox
"highlight Normal ctermbg=black guibg=#000000


"hi Normal ctermbg=none guibg=none
"hi NonText ctermbg=none guibg=none
"hi EndOfBuffer ctermbg=none
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
set colorcolumn=80
set nohlsearch
set mouse=a

hi ColorColumn ctermbg=darkred guibg=#cc3333


filetype plugin indent on

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

" Thanks prime!
nnoremap n nzzzv
nnoremap N Nzzzv,
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
"vnoremap J :m '>+1<CR>gv=gv' " These ones don't work that well
"vnoremap K :m '<-2<CR>gv=gv'
"nnoremap <leader>j :m .+1<CR>==
"nnoremap <leader>k :m .-2<CR>==

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

set clipboard+=unnamedplus

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>pp "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

set splitbelow
set splitright

set autoread
set number
set relativenumber
tnoremap <Esc> <C-\><C-n>
set ttimeoutlen=100

set cursorline

au FileType rust nmap <leader>r :Format<CR>

autocmd FileType rust let b:coc_root_patterns = ['Cargo.toml']

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

set breakindent
set formatoptions=l
set lbr

set fileformat=unix
set fileformats=unix,dos

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
