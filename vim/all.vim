" ---------- Vundle
set nocompatible              " be iMproved, required
if 1
    filetype off                  " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'Lokaltog/vim-easymotion'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'xolox/vim-misc'
    Plugin 'xolox/vim-colorscheme-switcher'
    Plugin 'xolox/vim-lua-ftplugin'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-commentary'
	Plugin 'mileszs/ack.vim'
	Plugin 'alols/vim-love-efm'
	Plugin 'vimoutliner/vimoutliner'
	Plugin 'vim-scripts/Figlet.vim'
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
endif
" ---------- End Of Vundle

" ---- Easymotion
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
let g:EasyMotion_startofline = 1 " keep cursor colum when JK motion

let g:colorscheme_switcher_define_mappings = 0
map <F7> :PrevColorScheme<CR>
map <F8> :RandomColorScheme<CR>
map <F9> :NextColorScheme<CR>
 
if 1

    inoremap  <Up>     <NOP>
    noremap   <Up>     <NOP>
    inoremap  <Down>   <NOP>
    noremap   <Down>   <NOP>
    inoremap  <Left>   <NOP>
    noremap   <Left>   <NOP>
    inoremap  <Right>  <NOP>
    noremap   <Right>  <NOP>
    inoremap  <PageUp>  <NOP>
    noremap   <PageUp>  <NOP>
    inoremap  <PageDown>  <NOP>
    noremap   <PageDown>  <NOP>
endif

syntax on
let c_no_curly_error = 1
filetype plugin indent on

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set wildmode=longest,list
set backspace=2
set tabstop=4
set shiftwidth=4
set hidden
set incsearch
set noswapfile
set nu
set rnu
set mouse=a

set viminfo=!,'25,\"100,:50,%,n~/.viminfo
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Highlighting past 80 columns
let &colorcolumn=join(range(81,335),",")
autocmd ColorScheme * hi ColorColumn ctermbg=233 guibg=#222222

set guioptions-=L
set guioptions-=R
set guioptions-=l
set guioptions-=r
set guifont=Menlo\ Regular:h14
