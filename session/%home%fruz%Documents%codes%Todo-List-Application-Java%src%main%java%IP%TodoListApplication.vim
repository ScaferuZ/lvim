let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/codes/Todo-List-Application-Java
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 src/main/java/IP/TodoListApplication/Main.java
badd +119 ~/Documents/codes/Todo-List-Application-Java/src/main/java/IP/TodoListApplication/Features/EditTask.java
badd +14 src/main/java/IP/TodoListApplication/App/TodoList.java
badd +52 ~/Documents/codes/Todo-List-Application-Java/src/main/java/IP/TodoListApplication/Features/MarkAsDone.java
badd +77 ~/Documents/codes/Todo-List-Application-Java/src/main/java/IP/TodoListApplication/Features/RemoveTask.java
badd +49 ~/Documents/codes/Todo-List-Application-Java/src/main/java/IP/TodoListApplication/SaveRead/SaveTasksToFile.java
badd +41 ~/Documents/codes/Todo-List-Application-Java/src/main/java/IP/TodoListApplication/SaveRead/ReadFromFile.java
argglobal
%argdel
$argadd src/main/java/IP/TodoListApplication/Main.java
edit ~/Documents/codes/Todo-List-Application-Java/src/main/java/IP/TodoListApplication/SaveRead/SaveTasksToFile.java
argglobal
balt ~/Documents/codes/Todo-List-Application-Java/src/main/java/IP/TodoListApplication/SaveRead/ReadFromFile.java
let s:l = 62 - ((27 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 62
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
