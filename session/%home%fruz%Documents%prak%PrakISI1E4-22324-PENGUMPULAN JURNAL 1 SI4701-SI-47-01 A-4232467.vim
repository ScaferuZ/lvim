let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.local/share/Trash/files/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +15 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ADILIO\ ADAHA\ PUTRA\ MULYANA_11194447_assignsubmission_file_/GUTS_JURNAL_ADILIOADAHAPUTRAMULYANA_102022330388.py
badd +12 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ADNAN\ RIZKI\ PRATAMA_11194444_assignsubmission_file_/GUTS_JURNAL\ 1\ _\ ADNAN\ RIZKI\ PRATAMA_102022300424.py
badd +7 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/AISAH\ KURNIAWATI\ PUTRI_11194443_assignsubmission_file_/GUTS_JURNAL_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
badd +26 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ALBIYAN\ DIKHA\ CHANDRA_11194446_assignsubmission_file_/GUTS_JURNAL_ALBIYAN\ DIKHA\ CHANDRA_102022300276.py
badd +12 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11194448_assignsubmission_file_/GUTS_JURNAL_ANDI\ MUH\ IHSANUL\ HAQ\ M_102022300085.py
badd +5 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ANDRARIEZA\ RIZQI\ PRADANA_11194445_assignsubmission_file_/GUTS_JURNAL_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
badd +44 ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11194449_assignsubmission_file_/GUTS_JURNAL_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
%argdel
$argadd .
edit ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11194449_assignsubmission_file_/GUTS_JURNAL_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
balt ~/Documents/prak/PrakISI1E4-22324-PENGUMPULAN\ JURNAL\ 1\ SI4701-SI-47-01\ A-4232467/ANDRARIEZA\ RIZQI\ PRADANA_11194445_assignsubmission_file_/GUTS_JURNAL_ANDRARIEZA\ RIZQI\ PRADANA_102022330319.py
let s:l = 44 - ((43 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 44
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
