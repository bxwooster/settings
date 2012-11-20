" detect Jam files and set file types

" Only do this when not done yet for this buffer
if (exists("b:did_ftplugin"))
  finish
endif

" Jam files
au BufNewFile,BufRead Jamroot,Jamfile,Jamrules,*.jam set filetype=jam

