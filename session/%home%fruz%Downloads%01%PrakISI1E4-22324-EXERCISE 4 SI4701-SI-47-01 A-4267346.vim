let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 4\ SI4701-SI-47-01\ A-4267346
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +0 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 4\ SI4701-SI-47-01\ A-4267346/ADILIO\ ADAHA\ PUTRA\ MULYANA_11979057_assignsubmission_file_/GUTS_LATIHAN4_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388.py
argglobal
%argdel
$argadd .
edit ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 4\ SI4701-SI-47-01\ A-4267346/ADILIO\ ADAHA\ PUTRA\ MULYANA_11979057_assignsubmission_file_/GUTS_LATIHAN4_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388.py
argglobal
let s:l = 105 - ((44 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 105
normal! 0
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
