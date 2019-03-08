set nocompatible

if has( 'gui_running' )
	set guifont=Fixedsys:h12:cANSI
	au GUIEnter * simalt ~x
endif

set number relativenumber numberwidth=5
set nowrap
set tw=0

set ai
set si
set matchtime=10

set list
set listchars=tab:>.

set scs

let Tlist_Ctags_Cmd = "C:/ctags/ctags.exe"
nnoremap <leader>tl :TlistToggle<cr>

set runtimepath^=~/vimfiles/bundle/ctrlp.vim

colorscheme desert

" vimscript the hard way stuff
"echo ">^.^<"
"map - ddp
"map _ ddP
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
iabbrev @@ johnson.erik.n@gmail.com
inoremap jk <esc>
inoremap <esc> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

augroup filetype_python
autocmd!
autocmd FileType python:iabbrev<buffer>iff if:<left>
augroup END

augroup filetype_javascript
autocmd!
autocmd FileType javascript:iabbrev<buffer>fn function
augroup END

augroup filetype_vim
autocmd!
autocmd BufRead *.vim set syntax=vim
augroup END

augroup filetype_java
autocmd!
autocmd FileType java :iabbrev <buffer> iff if()<left>
autocmd FileType java :iabbrev <buffer> whl while()<left>
autocmd FileType java :iabbrev <buffer> fr for()<left>
autocmd FileType java :iabbrev <buffer> rtn return
autocmd FileType java noremap  <buffer> <F3> :JavaSearchContext<cr>
autocmd FileType java let      java_comment_strings=1
autocmd FileType java let      java_highlight_java_lang_ids=1
autocmd FileType java let      java_mark_braces_in_parens_as_errors=1
autocmd FileType java let      java_highlight_all=1
autocmd FileType java let      java_highlight_debug=1
autocmd FileType java let      java_ignore_javadoc=1
autocmd FileType java let      java_highlight_java_lang_ids=1
autocmd FileType java let      java_highlight_functions="style"
autocmd FileType java let      java_minlines = 150
autocmd FileType java set tabstop=4
autocmd FileType java set shiftwidth=4 shiftround
autocmd FileType java set expandtab
augroup END

augroup filetype_html
autocmd!
" this is a fold mapping
autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

"todo config
hi link TodoTitle Title
hi link TodoTitleMark Normal
hi link TodoItem Special
hi link TodoItemAdditionalText Comment
hi link TodoItemCheckBox Identifier
hi link TodoItemDone Comment
hi link TodoComment Comment
let g:TogoExplicitCommentsEnabled=1

"      #####################
"      #####################
"      ##                 ##
"      ##  VUNDLE CONFIG  ##
"      ##                 ##
"      #####################
"      #####################
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'neochrome/todo.vim'

Plugin 'kylef/apiblueprint.vim'

Plugin 'taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

