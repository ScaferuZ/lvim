let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/codes/microblog
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +23 src/index.ts
badd +1 ~/Documents/codes/microblog/src/post/post.routes.ts
badd +7 ~/Documents/codes/microblog/src/post/post.controller.ts
badd +29 ~/Documents/codes/microblog/prisma/schema.prisma
badd +11 ~/Documents/codes/microblog/src/user/user.controller.ts
badd +7 ~/Documents/codes/microblog/src/user/user.routes.ts
argglobal
%argdel
$argadd src/index.ts
edit src/index.ts
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 30 + 32) / 64)
exe '2resize ' . ((&lines * 30 + 32) / 64)
argglobal
balt ~/Documents/codes/microblog/src/user/user.routes.ts
let s:l = 23 - ((8 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/codes/microblog/src/post/post.routes.ts", ":p")) | buffer ~/Documents/codes/microblog/src/post/post.routes.ts | else | edit ~/Documents/codes/microblog/src/post/post.routes.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/codes/microblog/src/post/post.routes.ts
endif
balt src/index.ts
let s:l = 7 - ((6 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 027|
wincmd w
exe '1resize ' . ((&lines * 30 + 32) / 64)
exe '2resize ' . ((&lines * 30 + 32) / 64)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
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
