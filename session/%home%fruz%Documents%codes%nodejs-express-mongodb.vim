let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/codes/nodejs-express-mongodb
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +3 ~/Documents/codes/nodejs-express-mongodb/app/config/db.config.js
badd +8 ~/Documents/codes/nodejs-express-mongodb/app/models/index.js
badd +25 server.js
badd +18 ~/Documents/codes/nodejs-express-mongodb/app/models/tutorial.model.js
badd +91 ~/Documents/codes/nodejs-express-mongodb/app/controllers/tutorial.controller.js
badd +28 ~/Documents/codes/nodejs-express-mongodb/app/routes/tutorial.routes.js
argglobal
%argdel
$argadd ~/Documents/codes/nodejs-express-mongodb/app/config/db.config.js
edit ~/Documents/codes/nodejs-express-mongodb/app/controllers/tutorial.controller.js
argglobal
balt ~/Documents/codes/nodejs-express-mongodb/app/models/tutorial.model.js
let s:l = 91 - ((20 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 91
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
