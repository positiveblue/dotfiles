set nocompatible              " be iMproved, required

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'ying17zi/vim-live-latex-preview'
"Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'farmergreg/vim-lastplace'
Plug 'kien/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'Shougo/neocomplcache.vim'
Plug 'vim-airline/vim-airline'
"Plug 'Valloric/YouCompleteMe'
Plug 'chrisbra/colorizer'

" search
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'pechorin/any-jump.vim'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'majutsushi/tagbar'

" Colorschemes
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

"" colorful
Plug 'dracula/vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'trusktr/seti.vim'
Plug 'hzchirs/vim-material'
Plug 'skielbasa/vim-material-monokai'
Plug 'nanotech/jellybeans.vim'
"" greenish
Plug 'preocanin/greenwint'
Plug 'kadekillary/skull-vim'
Plug 'Drogglbecher/vim-moonscape'
"" monochrome
Plug 'fxn/vim-monochrome'
Plug 'andreypopp/vim-colors-plain'
Plug 'hauleth/blame.vim'
Plug 'logico-dev/typewriter'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Haskell
"Plug 'enomsg/vim-haskellConcealPlus'
Plug 'Twinside/vim-haskellConceal'
Plug 'travitch/hasksyn'

Plug 'purescript-contrib/purescript-vim'

call plug#end()

let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

syntax enable
"set termguicolors
set number
set relativenumber
set autoindent
set smartindent
set smarttab
set expandtab
set softtabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set spell spelllang=en_us

set nospell

set ignorecase
set smartcase

set lazyredraw 
set foldcolumn=1

" Allow transparent background
hi Normal guibg=NONE ctermbg=NONE   

" Colorscheme
let g:gruvbox_italic = 1
let g:monochrome_italic_comments = 1
let g:materialmonokai_italic = 1
let g:materialmonokai_subtle_spell = 1
let g:jellybeans_use_term_italics = 1
let g:jellybeans_use_lowcolor_black = 1
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1,
  \       'allow_bold': 1,
  \       'allow_italic': 1
  \     }
  \   },
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
set background=dark    " Setting dark mode
colorscheme PaperColor

let g:airline_powerline_fonts = 1

"let g:ycm_path_to_python_interpreter = '/usr/bin/python'
"let g:python_host_prog = '/usr/bin/python2.7'
"let g:python3_host_prog = '/usr/bin/python3.6'


hi SpellBad cterm=reverse gui=reverse

map <C-n> :NERDTreeToggle<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>

nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>

filetype plugin on

" inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

autocmd FileType tex nnoremap <leader>wb ciw\textbf{<Esc>pa}<Esc>

autocmd FileType tex inoremap ;b \textbf{} <++><Esc>F}i
autocmd FileType tex inoremap ;i \textit{} <++><Esc>F}i
autocmd FileType tex inoremap ;t \texttt{} <++><Esc>F}i

autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;li <Enter>\item<Space>

autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i

nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>s :Ag <CR>
nmap <M-k>    :Ag <C-R><C-W><CR>
" nmap <Esc>k   :Ack! "\b<cword>\b" <CR>
nmap <M-S-k>  :Ag! <C-R><C-W><CR>
" nmap <Esc>K   :Ggrep! "\b<cword>\b" <CR>
nmap <Leader>l :Lines<CR>
nmap <Leader>c :Commits<CR>

nmap <M-p>    :CtrlSF <CR>
nmap <M-S-p>  :CtrlSFToggle <CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:fzf_tags_command = 'ctags -f tags -R .'
command! GenerateCtags :!ctags -R .

let g:gitgutter_sign_added = '●'
let g:gitgutter_sign_modified = '●'
let g:gitgutter_sign_removed = '●'
let g:gitgutter_sign_removed_first_line = '●'
let g:gitgutter_sign_modified_removed = '●'

map <C-m> :TagbarToggle<CR>
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

