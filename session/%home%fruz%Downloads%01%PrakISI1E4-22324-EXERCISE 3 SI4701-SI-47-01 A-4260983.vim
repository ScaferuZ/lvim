let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +39 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ADILIO\ ADAHA\ PUTRA\ MULYANA_11791897_assignsubmission_file_/GUTS_LATIHAN_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388.py
badd +24 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ADNAN\ RIZKI\ PRATAMA_11791894_assignsubmission_file_/GUTS_TP\ 3_ADNAN\ RIZKI\ PRATAMA_102022300424.py
badd +20 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/AISAH\ KURNIAWATI\ PUTRI_11791896_assignsubmission_file_/GUTS_LATIHAN_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
badd +34 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ALBIYAN\ DIKHA\ CHANDRA_11791892_assignsubmission_file_/GUTS_LATIHAN_ALBIYAN\ DIKHA\ CHANDRA_102022300276.py
badd +1 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11791893_assignsubmission_file_/GUTS_LATIHAN_ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_102022300085.py
badd +4 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ANDRARIEZA\ RIZQI\ PRADANA_11791891_assignsubmission_file_/GUTS_LATIHAN_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
badd +16 ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11791895_assignsubmission_file_/GUTS_LATIHAN_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
%argdel
$argadd .
edit ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11791895_assignsubmission_file_/GUTS_LATIHAN_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
balt ~/Downloads/01/PrakISI1E4-22324-EXERCISE\ 3\ SI4701-SI-47-01\ A-4260983/ANDRARIEZA\ RIZQI\ PRADANA_11791891_assignsubmission_file_/GUTS_LATIHAN_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
let s:l = 16 - ((15 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
