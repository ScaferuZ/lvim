let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/01
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +20 ~/Downloads/01/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ADILIO\ ADAHA\ PUTRA\ MULYANA_11256168_assignsubmission_file_/GUTS_TP2_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388\ (1).py
badd +11 ~/Downloads/01/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11256169_assignsubmission_file_/GUTS_TP_ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_102022300085.py
badd +1 ~/Downloads/01/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ANDRARIEZA\ RIZQI\ PRADANA_11256164_assignsubmission_file_/GUTS_TP_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
badd +2 ~/Downloads/01/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11256170_assignsubmission_file_/GUTS_TP_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
%argdel
$argadd PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880
edit ~/Downloads/01/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11256170_assignsubmission_file_/GUTS_TP_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
balt ~/Downloads/01/PrakISI1E4-22324-TP\ 2-SI-47-01\ A-4237880/ANDRARIEZA\ RIZQI\ PRADANA_11256164_assignsubmission_file_/GUTS_TP_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
let s:l = 69 - ((47 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 69
normal! 016|
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
