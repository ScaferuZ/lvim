let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/01/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI47INT-SI-47-INT\ A-4232496
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +18 ~/Downloads/01/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI47INT-SI-47-INT\ A-4232496/ARIEL\ IMMANUEL\ MAILOA_11196005_assignsubmission_file_/GUTS_LATIHAN1_ARIEL\ IMMANUEL\ MAILOA_1202224383.py
badd +36 ~/Downloads/01/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI47INT-SI-47-INT\ A-4232496/MUHAMMAD\ AHSANTA\ YABIN_11196003_assignsubmission_file_/GUTS_LATIHAN1_MUHAMMAD\ AHSANTA\ YABIN_120222412.py
badd +23 ~/Downloads/01/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI47INT-SI-47-INT\ A-4232496/MUHAMMAD\ NAUFAL\ JULIANTO_11195999_assignsubmission_file_/GUTS_LATIHAN1_MUHAMMAD\ NAUFAL\ JULIANTO_102022340417.py
badd +0 ~/Downloads/01/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI47INT-SI-47-INT\ A-4232496/RASYA\ AKBAR\ LAZUARDI_11196002_assignsubmission_file_/GUTS_LATIHAN1_RASYA\ AKBAR\ LAZUARDI_102022340397.py
argglobal
%argdel
$argadd .
edit ~/Downloads/01/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI47INT-SI-47-INT\ A-4232496/RASYA\ AKBAR\ LAZUARDI_11196002_assignsubmission_file_/GUTS_LATIHAN1_RASYA\ AKBAR\ LAZUARDI_102022340397.py
argglobal
balt ~/Downloads/01/PrakISI1E4-22324-PENGUMPULAN\ EXERCISE\ 1\ SI47INT-SI-47-INT\ A-4232496/MUHAMMAD\ NAUFAL\ JULIANTO_11195999_assignsubmission_file_/GUTS_LATIHAN1_MUHAMMAD\ NAUFAL\ JULIANTO_102022340417.py
let s:l = 24 - ((23 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
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
