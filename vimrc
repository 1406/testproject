set tabstop=4
set softtabstop=4
set shiftwidth=4

set expandtab

set autoindent
set smartindent
set cindent

set foldmethod=indent
set foldlevel=9

set mouse=a

set noswapfile
set nobackup
set nowritebackup

" ctags config, the ';' is must
set tags=tags;
set autochdir

" taglist config
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
cmap tl Tlist

" cscope config
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" winmanager config
let g:winManagerWindowLayout='FileExplorer|TagList'
cmap wm WMToggle

" minibufexpl config
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModSelTarget=1

":command -nargs=0 Retag :!ctags -R && cscope -Rbq
