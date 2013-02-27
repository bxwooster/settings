"Todo:	'Since vim automatically loads everything in ~/.vim/plugin/,
"		you can just add a directory like ~/.vim/plugin/settings and
"		put each semantic piece in its own snippet.'

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

syn on
let c_no_curly_error = 1

filetype plugin indent on

au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl,*.glts setf glsl

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

set wildmode=longest,list

set backspace=2

set tabstop=4
set shiftwidth=4

set hidden
set incsearch
set noswapfile
set rnu

set viminfo=!,'25,\"100,:50,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

let g:localvimrc_sandbox=0
let g:localvimrc_whitelist='/'
" hack

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

match ToDo /\s\+$/
