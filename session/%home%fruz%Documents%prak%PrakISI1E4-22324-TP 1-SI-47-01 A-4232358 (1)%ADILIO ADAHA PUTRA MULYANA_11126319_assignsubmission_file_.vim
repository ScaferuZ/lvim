let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/prak/PrakISI1E4-22324-TP\ 1-SI-47-01\ A-4232358\ (1)/ADILIO\ ADAHA\ PUTRA\ MULYANA_11126319_assignsubmission_file_
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +32 GUTS_TP1_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388.py
badd +32 ~/Documents/prak/PrakISI1E4-22324-TP\ 1-SI-47-01\ A-4232358\ (1)/ADNAN\ RIZKI\ PRATAMA_11126383_assignsubmission_file_/GUTS_TP1_ADNAN\ RIZKI\ PRATAMA._102022300424\ .py
badd +25 ~/Documents/prak/PrakISI1E4-22324-TP\ 1-SI-47-01\ A-4232358\ (1)/AISAH\ KURNIAWATI\ PUTRI_11126294_assignsubmission_file_/GUTS_TP1_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
argglobal
%argdel
$argadd GUTS_TP1_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388.py
edit ~/Documents/prak/PrakISI1E4-22324-TP\ 1-SI-47-01\ A-4232358\ (1)/AISAH\ KURNIAWATI\ PUTRI_11126294_assignsubmission_file_/GUTS_TP1_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
argglobal
balt ~/Documents/prak/PrakISI1E4-22324-TP\ 1-SI-47-01\ A-4232358\ (1)/ADNAN\ RIZKI\ PRATAMA_11126383_assignsubmission_file_/GUTS_TP1_ADNAN\ RIZKI\ PRATAMA._102022300424\ .py
let s:l = 25 - ((24 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 016|
lcd ~/Documents/prak/PrakISI1E4-22324-TP\ 1-SI-47-01\ A-4232358\ (1)/AISAH\ KURNIAWATI\ PUTRI_11126294_assignsubmission_file_
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
