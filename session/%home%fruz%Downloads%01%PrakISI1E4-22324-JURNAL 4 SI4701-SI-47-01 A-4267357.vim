let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/ADILIO\ ADAHA\ PUTRA\ MULYANA_11979269_assignsubmission_file_/GUTS_JURNAL_ADILIOADAHAPUTRAMULYANA_102022330388.py
badd +77 ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/ADNAN\ RIZKI\ PRATAMA_11979271_assignsubmission_file_/GUTS_JURNAL\ 4_ADNAN\ RIZKI\ PRATAMA_102022300424.py
badd +83 ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/AISAH\ KURNIAWATI\ PUTRI_11979272_assignsubmission_file_/GUTS_JURNAL_AISAH\ KURNIAWATI\ PUTRI_102022300111.py
badd +105 ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/ALBIYAN\ DIKHA\ CHANDRA_11979268_assignsubmission_file_/GUTS_JURNAL_ALBIYAN\ DIKHA\ CHANDRA_102022300276.py
badd +126 ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11979273_assignsubmission_file_/GUTS_LATIHAN_ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_102022300085.py
badd +22 ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11979267_assignsubmission_file_/GUTS_JURNAL_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
%argdel
$argadd .
edit ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/ARJUNA\ DWI\ PUTRA\ KUNAEFI_11979267_assignsubmission_file_/GUTS_JURNAL_ARJUNA\ DWI\ PUTRA\ KUNAEFI_102022300152.py
argglobal
balt ~/Downloads/01/PrakISI1E4-22324-JURNAL\ 4\ SI4701-SI-47-01\ A-4267357/ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_11979273_assignsubmission_file_/GUTS_LATIHAN_ANDI\ MUHAMMAD\ IHSANUL\ HAQ\ MALVIRA_102022300085.py
let s:l = 56 - ((54 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 017|
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
