"Todo:	'Since vim automatically loads everything in ~/.vim/plugin/,
"		you can just add a directory like ~/.vim/plugin/settings and
"		put each semantic piece in its own snippet.'

"Note: For some reason this hasn't worked

if 0
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

set tabpagemax=64

silent! colorscheme custom

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

syn on
let c_no_curly_error = 1

set rnu
"set so=999

set wildmode=longest,list

set tabstop=4
set shiftwidth=4

filetype plugin indent on

set backspace=2

au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 

map - :tabp<CR>
map = :tabn<CR>

set viminfo=!,'25,\"100,:50,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

let g:localvimrc_sandbox=0
let g:localvimrc_whitelist='/home/v7/ad-lib'

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

match ToDo /\s\+$/
