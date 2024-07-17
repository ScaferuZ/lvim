let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +42 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ADILIO\ ADAHA\ PUTRA\ MULYANA_11194117_assignsubmission_file_/GUTS_LATIHAN_ADILIO\ ADAHA\ PUTRA\ MULYANA_102022330388.py
badd +35 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ADNAN\ RIZKI\ PRATAMA_11194120_assignsubmission_file_/GUTS_LATIHAN\ 1\ _\ ADNAN\ RIZKI\ PRATAMA_102022300424.py
badd +1 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/AISAH\ KURNIAWATI\ PUTRI_11194116_assignsubmission_file_/GUTS_LATIHAN1_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
badd +5 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ALBIYAN\ DIKHA\ CHANDRA_11194121_assignsubmission_file_/GUTS_LATIHAN1_ALBIYAN\ DIKHA\ CHANDRA_102022300276.py
badd +20 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11194122_assignsubmission_file_/GUTS_LATIHAN_ANDI\ MUH\ IHSANUL\ HAQ\ M_102022300085.py
badd +30 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ANDRARIEZA\ RIZQI\ PRADANA_11194119_assignsubmission_file_/GUTS_LATIHAN_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
badd +1 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11194118_assignsubmission_file_/GUTS_LATIHAN_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
%argdel
$argadd .
edit ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11194118_assignsubmission_file_/GUTS_LATIHAN_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
balt ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI4701-SI-47-01\ A-4232408/ANDRARIEZA\ RIZQI\ PRADANA_11194119_assignsubmission_file_/GUTS_LATIHAN_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
let s:l = 23 - ((22 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 036|
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
