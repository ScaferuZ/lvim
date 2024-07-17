let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +102 ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/ADILIO\ ADAHA\ PUTRA\ MULYANA_11938442_assignsubmission_file_/GUTS_TP4_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388.py
badd +109 ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/ADNAN\ RIZKI\ PRATAMA_11938426_assignsubmission_file_/GUTS_TP\ 4_ADNAN\ RIZKI\ PRATAMA_102022300424.py
badd +24 ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/AISAH\ KURNIAWATI\ PUTRI_11938636_assignsubmission_file_/GUTS_TP_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
badd +4 ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/ALBIYAN\ DIKHA\ CHANDRA_11938430_assignsubmission_file_/GUTS_TP_ALBIYAN\ DIKHA\ CHANDRA_102022300276.py
badd +1 ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11938340_assignsubmission_file_/GUTS_TP_ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_102022300085.py
badd +1 ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/ANDRARIEZA\ RIZQI\ PRADANA_11938720_assignsubmission_file_/GUTS_TP_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
argglobal
%argdel
$argadd .
edit ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/ANDRARIEZA\ RIZQI\ PRADANA_11938720_assignsubmission_file_/GUTS_TP_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
argglobal
balt ~/Downloads/01/PrakISI1E4-22324-TP\ 4-SI-47-01\ A-4266851/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11938340_assignsubmission_file_/GUTS_TP_ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_102022300085.py
let s:l = 1 - ((0 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
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
