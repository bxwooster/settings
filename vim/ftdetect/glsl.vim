if (exists("b:did_ftplugin"))
  finish
endif

" Jam files
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl,*.glts set filetype=glsl


