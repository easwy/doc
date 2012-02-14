let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <silent> <expr> <F5> (pumvisible()?"\":"")."\\<Plug>LookupFile"
cmap <F1> 
imap <F1> 
map! <S-Insert> <MiddleMouse>
vnoremap  "+y
nmap  h
nmap <NL> j
nmap  k
nmap  l
nnoremap <silent>  :YRReplace '1', 'p'
nnoremap <silent>  :YRReplace '-1', 'P'
noremap  
nmap  "+gP
omap  "+gP
nmap  :BottomExplorerWindow
nmap  :FirstExplorerWindow
vnoremap <silent> # :call VisualSearch('b')
vnoremap <silent> * :call VisualSearch('f')
map <silent> ,mm :ShowMarksPlaceMark
map <silent> ,ma :ShowMarksClearAll
map <silent> ,mh :ShowMarksClearMark
map <silent> ,mo :ShowMarksOn
map <silent> ,mt :ShowMarksToggle
nmap ,caL <Plug>CalendarH
nmap ,cal <Plug>CalendarV
map <silent> ,bv :VSBufExplorer
map <silent> ,bs :SBufExplorer
map <silent> ,be :BufExplorer
nmap ,ihn :IHN
nmap ,is :IHS:A
nmap ,ih :IHS
noremap ,dm mmHmn:%s///ge'nzt'm
nmap <silent> ,lv :lv /=expand("<cword>")/ %:lw
nmap ,cw :cw 10
nmap ,cp :cp
nmap ,cn :cn
vmap <silent> ,hr <Plug>MarkRegex
nmap <silent> ,hr <Plug>MarkRegex
vmap <silent> ,hh <Plug>MarkClear
nmap <silent> ,hh <Plug>MarkClear
vmap <silent> ,hl <Plug>MarkSet
nmap <silent> ,hl <Plug>MarkSet
nmap <silent> ,mk :MarksBrowser
nmap <silent> ,lw :LUWalk
nmap <silent> ,ll :LUBufs
nmap <silent> ,lk <Plug>LookupFile
nmap <silent> ,fe :Sexplore!
nmap <silent> ,wm :WMToggle
nmap <silent> ,tl :Tlist
map ,yr :YRShow
map ,s? z=
map ,sa zg
map ,sp [s
map ,sn ]s
map ,t4 :set shiftwidth=4
map ,t2 :set shiftwidth=2
vmap <silent> ,zo zO
nmap <silent> ,zo zO
map ,ec :tabnew ~/tmp/scratch.txt
map ,es :tabnew:setl buftype=nofile
nmap <silent> ,ws :call DeleteTrailingWS():w
map <silent> ,cd :cd %:p:h
map ,tm :tabmove
map ,tc :tabclose
map ,te :tabedit
map ,tn :tabnew
map ,bd :Bclose
nmap ,fu :se ff=unix
nmap ,fd :se ff=dos
map ,$ :syntax sync fromstart
map ,4 :set ft=javascript
map ,3 :set syntax=python
map ,2 :set syntax=xhtml
map ,1 :set syntax=c
map <silent> ,ee :call SwitchToBuf("~/.vimrc")
map <silent> ,ss :source ~/.vimrc
nmap <silent> ,rr :redraw!
nmap <silent> , :noh
nmap <silent> ,qa :qa
nmap <silent> ,qq :q
nmap <silent> ,qf :q!
nmap <silent> ,qw :wq
nmap <silent> ,wf :w!
nmap <silent> ,ww :w
nnoremap <silent> . :YRYankCount '.'
imap ° 0i
imap ¤ $a
nnoremap <silent> D :YRYankCount 'D'
vnoremap <silent> P :YRPaste 'P', 'v'
nnoremap <silent> P :YRPaste 'P'
nnoremap <silent> Y :YRYankCount 'Y'
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
vnoremap <silent> d :YRDeleteRange 'v'
nnoremap <silent> dgg :YRYankCount 'dgg'
nnoremap <silent> dG :YRYankCount 'dG'
nnoremap <silent> d$ :YRYankCount 'd$'
nnoremap <silent> daw :YRYankCount 'daw'
nnoremap <silent> diw :YRYankCount 'diw'
nnoremap <silent> dE :YRYankCount 'dE'
nnoremap <silent> de :YRYankCount 'de'
nnoremap <silent> dw :YRYankCount 'dw'
nnoremap <silent> dd :YRYankCount 'dd'
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> gp :YRPaste 'gp'
nnoremap <silent> gP :YRPaste 'gP'
vnoremap <silent> p :YRPaste 'p', 'v'
nnoremap <silent> p :YRPaste 'p'
vnoremap <silent> y :YRYankRange 'v'
nnoremap <silent> ygg :YRYankCount 'ygg'
nnoremap <silent> yG :YRYankCount 'yG'
nnoremap <silent> y$ :YRYankCount 'y$'
nnoremap <silent> yaw :YRYankCount 'yaw'
nnoremap <silent> yiw :YRYankCount 'yiw'
nnoremap <silent> yE :YRYankCount 'yE'
nnoremap <silent> ye :YRYankCount 'ye'
nnoremap <silent> yw :YRYankCount 'yw'
nnoremap <silent> yy :YRYankCount 'yy'
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <silent> <Plug>CalendarH :cal Calendar(1)
nmap <silent> <Plug>CalendarV :cal Calendar(0)
nmap <Nul>d :cs find d =expand("<cword>")
nmap <Nul>i :cs find i ^=expand("<cfile>")$
nmap <Nul>f :cs find f =expand("<cfile>")
nmap <Nul>e :cs find e =expand("<cword>")
nmap <Nul>t :cs find t =expand("<cword>")
nmap <Nul>c :cs find c =expand("<cword>")
nmap <Nul>g :cs find g =expand("<cword>")
nmap <Nul>s :cs find s =expand("<cword>")
vmap <F1> 
nmap <F1> 
map <S-Insert> <MiddleMouse>
cnoremap  <Home>
inoremap  
cnoremap  <End>
inoremap  
inoremap <expr> <NL> pumvisible()?"\<PageDown>\\":"\"
inoremap <expr>  pumvisible()?"\<PageUp>\\":"\"
cnoremap  
inoremap  
inoremap <expr>  pumvisible()?"\":"\"
inoremap <expr>  pumvisible()?"\":"\"
cmap  +
inoremap  
cmap @vd vertical diffsplit 
iabbr xname Easwy Yang
iabbr xdate =strftime("%Y/%m/%d")
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set cindent
set cmdheight=2
set complete=.,w,b,t
set completeopt=menu
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopetagorder=1
set cscopeverbose
set diffopt=filler,vertical
set expandtab
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1
set grepprg=grep\ -nH\ $*
set guifont=Bitstream\ Vera\ Sans\ Mono\ 9,SimSun\ 9
set guioptions=aegit
set helplang=en
set history=400
set hlsearch
set iminsert=0
set incsearch
set laststatus=2
set lazyredraw
set matchpairs=(:),{:},[:],<:>
set mouse=a
set pastetoggle=<F3>
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim71,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set sessionoptions=blank,buffers,folds,help,options,tabpages,winsize,sesdir
set shiftwidth=4
set smartindent
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set switchbuf=useopen
set termencoding=utf-8
set viminfo='10,\"100,:20,n~/.viminfo
set visualbell
set whichwrap=b,s,<,>
set wildmenu
set window=41
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +19 00index.xml
badd +1 webserver.xml
badd +15 Makefile
badd +73 devserver.xml
badd +1 /mnt/share/01sunbala/server.conf/00index.xml
badd +1 security.xml
badd +14 backup.xml
args /mnt/share/01sunbala/server.conf/00index.xml
edit security.xml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
map <buffer> ,  :make
inoremap <buffer> \> >
inoremap <buffer> \. >
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,t
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'xml'
setlocal filetype=xml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=XmlIndentGet(v:lnum,1)
setlocal indentkeys=o,O,*<Return>,<>>,<<>,/,{,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=xmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'xml'
setlocal syntax=xml
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0133l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
