let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/prak/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +10 ~/Documents/prak/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ADILIO\ ADAHA\ PUTRA\ MULYANA_11256168_assignsubmission_file_/GUTS_TP2_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388\ (1).py
badd +3 ~/Documents/prak/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ADNAN\ RIZKI\ PRATAMA_11256165_assignsubmission_file_/GUTS_TP\ 2\ _\ ADNAN\ RIZKI\ PRATAMA_102022300424.py
badd +1 ~/Documents/prak/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/AISAH\ KURNIAWATI\ PUTRI_11256166_assignsubmission_file_/GUTS_TP_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
badd +1 ~/Documents/prak/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ALBIYAN\ DIKHA\ CHANDRA_11256167_assignsubmission_file_/GUTS_TP_ALBIYAN\ DIKHA\ CHANDRA_102022300276.py
argglobal
%argdel
$argadd .
edit ~/Documents/prak/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ALBIYAN\ DIKHA\ CHANDRA_11256167_assignsubmission_file_/GUTS_TP_ALBIYAN\ DIKHA\ CHANDRA_102022300276.py
argglobal
balt ~/Documents/prak/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/AISAH\ KURNIAWATI\ PUTRI_11256166_assignsubmission_file_/GUTS_TP_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
let s:l = 25 - ((24 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 020|
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
