" vim -c command -c 'command option' or vim +command

set nocompatible

set shell=/usr/bin/bash

set shellcmdflag=-lc

set bs=eol,start,indent

" do not show start up info
set shortmess=atI

" Default to Unix LF line endings
set ffs=unix

" Use OS clipboard for copypasta
set clipboard=unnamed

set encoding=utf-8

set nobackup

set noswapfile

set bufhidden=hide

highlight! signcolumn cterm=standout ctermfg=green ctermbg=red

"set signcolumn=yes

set splitright
set splitbelow

set showtabline=2

"set list

set showcmd

set t_Co=256

set timeout timeoutlen=1500 ttimeoutlen=0

"autocmd FileType qf wincmd _

filetype plugin indent on

" set selection=exclusive

" set paste

" set linespace=0

" set number

set ruler

set laststatus=2

set noshowmode

set cmdheight=2

set ignorecase

set smartcase

set hlsearch

set incsearch

set wildmode=longest,list
set wildmenu

set lazyredraw

set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

syntax on

syntax enable

"set synmaxcol=0
"syntax sync minlines=10000
set redrawtime=10000
"syntax sync fromstart

au BufRead,BufNewFile *.diam set filetype=Diameter

set autoindent

set cindent

"set nowrap
set wrap linebreak nolist

set textwidth=120

set showmatch

set matchtime=2

set display=lastline

set tabpagemax=100

set switchbuf+=usetab,newtab

colorscheme desert

set background=dark

set grepprg=ag

"set path+=$ROOT

set tags=./.tags;,.tags

highlight! clear SpellBad
highlight! clear SpellCap
highlight! clear SpellRare
highlight! clear SpellLocal
highlight! SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight! SpellCap term=underline cterm=underline
highlight! SpellRare term=underline cterm=underline
highlight! SpellLocal term=underline cterm=underline

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.a,*.sh,*.out,*.out*
set wildignore+=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.swp,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

" xxd -r -p file    " convert hex to binary (ascii)
" xxd -i file    " convert binary file to hex
"
" ascii <=> hex
" vnoremap ; :<c-u>s/\%V./\=printf("%x",char2nr(submatch(0)))/g<cr><c-l>`<
" vnoremap u :<c-u>s/\%V\x\x/\=nr2char(printf("%d", "0x".submatch(0)))/g<cr><c-l>`<

call plug#begin('~/local/share/vim/vim82/plugged')

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch-easymotion.vim'

Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for': ['c', 'cpp'] }
Plug 'sgur/vim-textobj-parameter'
Plug 'kana/vim-textobj-user'

Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'mh21/errormarker.vim'

Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/vim-easy-align'
"Plug 'roxma/vim-paste-easy'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'mbbill/undotree'
"Plug 'jiangmiao/auto-pairs'  "conflict with rainbow

Plug 'kshenoy/vim-signature'
Plug 'junegunn/vim-peekaboo'

Plug 'tpope/vim-unimpaired'
Plug 'andymass/vim-matchup'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF'
"Plug 'liuchengxu/vim-clap'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp'] }


Plug 'Valloric/YouCompleteMe' " Do not update
"Plug 'dense-analysis/ale'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'natebosch/vim-lsc'
Plug 'Shougo/echodoc.vim'

Plug 'vim-scripts/gtags.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'dyng/ctrlsf.vim'
Plug 'skywind3000/vim-preview'
Plug 'majutsushi/tagbar'
"Plug 'liuchengxu/vista.vim'

Plug 'tpope/vim-repeat'
Plug 't9md/vim-choosewin'
"Plug 'Valloric/ListToggle'
Plug 'dhruvasagar/vim-zoom'
Plug 'Yggdroot/indentLine'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'skywind3000/vim-quickui'

Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'    "simpler status line
Plug 'luochen1990/rainbow'
Plug 'ntpeters/vim-better-whitespace'
Plug 'flazz/vim-colorschemes'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let  mapleader=";"
let  maplocalleader=","

"imap <leader><leader>   <Esc>
"imap <localleader><localleader>   <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
"imap ii <Esc>

nmap <leader>e      : edit!  <CR>
nmap <leader>w      : write! <CR>
nmap <leader>q      : quit!  <CR>
nmap <leader>x      : exit!  <CR>
nmap <leader>y      : ,, write!  ~/tmp/copy-paste <CR>
vmap <leader>y      :    write!  ~/tmp/copy-paste <CR>
nmap <leader>p      : read    ~/tmp/copy-paste <CR>
nmap <leader><tab>  : tabnew <CR>
nmap <tab>          : tabnext <CR>
nmap <leader>sh     : vertical terminal <CR>

" map ALT key to Meta key,
" change Alt to ESC+X, means when pressed ALT+X, terminal will send <ESC>x (code 0x27, 0x78)
" Putty -> Keyboard -> AltGr acts as Compose key  &&  Contro-Alt is different from AltGr,
" default is ALT+X sending <ESC>x
"noremap <ESC>x :echo "ALT-X pressed"<cr>
noremap <M-2> : vertical copen 120 <CR>
exec "set <M-2>=\e2"
noremap <M-3> : cclose<CR>
exec "set <M-3>=\e3"
noremap <M-0> : execute "set colorcolumn=" . (&colorcolumn == "" ? "93" : "") <CR>
exec "set <M-0>=\e0"
" ALT 1-9a-zA-Zetc

"<C-%>/<C-]> jump to tag
"map <C-@><key> :command<CR>  80<yX>
"map <C-[>/<C-#><key> :command<CR>  ^[ ESC escap
"map <C-\>/<C-$><key> :command<CR>  ^\
"map <C-^><key> :command<CR> alternate file ^^
"nmap <C-e>      : echo Ctrl<CR>
"<C-a-zA-Z0-9etc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"TOhtml
"let g:html_line_ids = 1
let g:html_dynamic_folds = 1
let g:html_number_lines = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'haya14busa/incsearch.vim'

"set hlsearch

"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

" set g:incsearch#auto_nohlsearch to 1 (default: 0) and use above mappings,
" 'hlsearch' will be __automatically__ turned off after the cursor move.
let g:incsearch#auto_nohlsearch = 1

"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)

" set g:incsearch#consistent_n_direction to 1 (default: 0),
" n and N directions are always forward and backward respectively
" even after performing <Plug>(incsearch-backward) which is improved motion of ?.
"let g:incsearch#consistent_n_direction = 1

" set g:incsearch#do_not_save_error_message_history* to 1 (default: 0)
" error and warning messages with search command don't save into message-history.
" message-history doesn't be messed up with some unneeded error and
" warning messages like |E486| ,`search hit BOTTOM, continuing at TOP`
" warning, and so on. Welcome clean message-history!
"let g:incsearch#do_not_save_error_message_history = 1

" g:incsearch#separate_highlight (default: 0)
" Highlight matched pattern separately with forward matches and backward matches.
"let g:incsearch#separate_highlight = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'haya14busa/incsearch-fuzzy.vim'

"map z/ <Plug>(incsearch-fuzzy-/)
"map z? <Plug>(incsearch-fuzzy-?)
"map zg/ <Plug>(incsearch-fuzzy-stay)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'easymotion/vim-easymotion'

" Disable default mappings
let g:EasyMotion_do_mapping = 0

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" US layout
let g:EasyMotion_use_smartsign_us = 1

"nmap <localleader>f  <Plug>(easymotion-overwin-f)
"nmap <localleader>f2 <Plug>(easymotion-overwin-f2)
"nmap <localleader>l  <Plug>(easymotion-overwin-line)
"nmap <localleader>w  <Plug>(easymotion-overwin-w)
"nmap <localleader>j  <Plug>(easymotion-jumptoanywhere)
nmap  #               <Plug>(easymotion-overwin-f)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'haya14busa/incsearch-easymotion.vim'

"map z/  <Plug>(incsearch-easymotion-/)
"map z?  <Plug>(incsearch-easymotion-?)
"map zg/ <Plug>(incsearch-easymotion-stay)
map  /   <Plug>(incsearch-easymotion-/)

"function! s:config_easyfuzzymotion(...) abort
  "return extend(copy({
  "\   'converters': [incsearch#config#fuzzy#converter()],
  "\   'modules': [incsearch#config#easymotion#module()],
  "\   'keymap': {"\<CR>": '<Over>(easymotion)'},
  "\   'is_expr': 0,
  "\   'is_stay': 1
  "\ }), get(a:, 1, {}))
"endfunction
"noremap <silent><expr> <leader>/ incsearch#go(<SID>config_easyfuzzymotion())

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'kana/vim-textobj-indent'
"
"ai    <Plug>(textobj-indent-a)
"ii    <Plug>(textobj-indent-i)
"aI    <Plug>(textobj-indent-same-a)
"iI    <Plug>(textobj-indent-same-i)

"Plug 'kana/vim-textobj-syntax'
"
"ay    <Plug>(textobj-syntax-a)
"iy    <Plug>(textobj-syntax-i)

"Plug 'kana/vim-textobj-function', { 'for': ['c', 'cpp'] }
"
"af    <Plug>(textobj-function-a)
"if    <Plug>(textobj-function-i)
"aF    <Plug>(textobj-function-A)
"iF    <Plug>(textobj-function-I)


"Plug 'sgur/vim-textobj-parameter'
"
"let g:vim_textobj_parameter_mapping = ','
"a,
"i,

"Plug 'kana/vim-textobj-user'
call textobj#user#plugin('braces', {
\   'angle': {
\     'pattern': ['<<', '>>'],
\     'select-a': 'aA',
\     'select-i': 'iA',
\   },
\ })

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'skywind3000/asyncrun.vim'
"todo
"Plug 'skywind3000/asynctasks.vim'
"
let g:asyncrun_bell = 1
let g:asyncrun_open = 30
let g:asyncrun_rootmarks = [ '.git', '.root', '.project' ]
"let g:asyncrun_status = ''
"let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
"nmap <localleader>q    : call asyncrun#quickfix_toggle(120) <CR>
"nmap <localleader>build :AsyncRun -mode=terminal -pos=tab -raw -cwd=~/workspace/ims_do <command> <CR>
"mnemonic maKe
nmap <C-m> :AsyncRun -cwd=~/workspace/ -program=make @ -f ~/workspace/makefile <CR>

" Gpush and Gfetch in vim-fugitive can be started with asyncrun
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

":AsyncRun g++ -O3 "%" -o "%<" -lpthread
"Macro '%' stands for filename and '%<' represents filename without extension
"
":AsyncRun! ag -g xxx.cxx ~
"when ! is included, auto-scroll in quickfix will be disabled.
"<cword> represents current word under cursor.
"
"AsyncRun <command>

"AsyncRun -raw <command>
"option -raw will display the raw output (without matching to errorformat)
"
":AsyncStop[!] "!" job will be stopped by signal KILL.
":AsyncRun[!] [options] {cmd} ...
"%:p     - File name of current buffer with full path
"%:t     - File name of current buffer without path
"%:p:h   - File path of current buffer without file name
"%:e     - File extension of current buffer
"%:t:r   - File name of current buffer without path and extension
"%       - File name relativize to current directory
"%:h:.   - File path relativize to current directory
"<cwd>   - Current directory
"<cword> - Current word under cursor
"<cfile> - Current file name under cursor
"<root>  - Project root directory

"Environment variables are set before executing:
"$VIM_FILEPATH  - File name of current buffer with full path
"$VIM_FILENAME  - File name of current buffer without path
"$VIM_FILEDIR   - Full path of current buffer without the file name
"$VIM_FILEEXT   - File extension of current buffer
"$VIM_FILENOEXT - File name of current buffer without path and extension
"$VIM_PATHNOEXT - Current file name with full path but without extension
"$VIM_CWD       - Current directory
"$VIM_RELDIR    - File path relativize to current directory
"$VIM_RELNAME   - File name relativize to current directory
"$VIM_ROOT      - Project root directory
"$VIM_CWORD     - Current word under cursor
"$VIM_CFILE     - Current filename under cursor
"$VIM_GUI       - Is running under gui ?
"$VIM_VERSION   - Value of v:version
"$VIM_COLUMNS   - How many columns in vim's screen
"$VIM_LINES     - How many lines in vim's screen
"$VIM_SVRNAME   - Value of v:servername for +clientserver usage
"Macro $(VIM_ROOT) and <root> (new in version 1.3.12) indicate
"the Project Root of the current file.

"Macro <root> or $(VIM_ROOT) in the command line or in the -cwd option
"will be expanded as the Project Root Directory of the current file:
":AsyncRun -cwd=<root> make
"The Project Root is the nearest ancestor directory of the current file
"which contains one of these directories or files:
"   .svn .git .hg .root .project
"If none of the parent directories contains these root markers,
"the directory of the current file is used as the project root.
"If your current project is not in any git or subversion repository,
"just put an empty .root file in your project root,
"AsyncRun will take it as the project root.
"This will print the project root of current file:
":echo asyncrun#get_root('%')
"
"Option        Default    Description
"-mode=?       "async"    "async" (default), "bang" (with ! command) and "terminal"
"-cwd=?        unset      initial directory (use current directory if unset),
"                         -cwd=<root> to run commands in project root directory,
"-save=?       0          -save=1 to save current file,
"                         -save=2 to save all modified files before executing.
"-program=?    unset      set to make to use &makeprg, grep to use &grepprt
"-post=?       unset      vimscript exec after job finished, spaces must be escaped to '\ '
"-auto=?       unset    event name to trigger QuickFixCmdPre/QuickFixCmdPost [name] autocmd.
"-raw          unset    use raw output if provided, and &errorformat will be ignored.
"-strip        unset    remove the heading/trailing messages if provided
"-pos=?        "bottom" When using internal terminal with -mode=term,
"                       -pos is used to specify where to split the terminal window,
"                       it can be one of "tab", "curwin", "top", "bottom", "left",
"                       "right" and "external".
"-rows=num     0        When using a horizontal split terminal,
"                       this value represents the height of terminal window.
"-cols=num     0        When using a vertical split terminal,
"                       this value represents the width of terminal window.
"-errorformat=? unset   errorformat for error matching, if it is unprovided,
"                       use current &errorformat value.
"                       Beware that % needs to be escaped into \%.
"-focus=?      1        set to 0 to prevent focus changing when working with a split temrinal
"-hidden=?     0        set to 1 to setup bufhidden to hide for internal terminal
"All options must start with a minus and position before [cmd].

"
":10,20 AsyncRun cat         Range support

"Plug 'skywind3000/asynctasks.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'mh21/errormarker.vim'
let g:asyncrun_auto = "make"
let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat
"AsyncRun -auto=make make
"both "g:asyncrun_auto" and "-auto=?" can get errormaker to work.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'haya14busa/vim-easyoperator-line'
"
let g:EasyOperator_line_do_mapping = 0
nmap vl <Plug>(easyoperator-line-select)
nmap dl <Plug>(easyoperator-line-delete)
nmap yl <Plug>(easyoperator-line-yank)

"Plug 'haya14busa/vim-easyoperator-phrase'
"
"nmap vp <Plug>(easyoperator-phrase-select)
"nmap dp <Plug>(easyoperator-phrase-delete)
"nmap yp <Plug>(easyoperator-phrase-yank)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'terryma/vim-multiple-cursors'
"<C-n> start multicursor and add a virtual cursor + selection on the match
"next: <C-n> add a new virtual cursor + selection on the next match
"skip: <C-x> skip the next match
"prev: <C-p> remove current virtual cursor + selection and go back on previous match
"select all: <A-n> start multicursor and directly select all matches
"go to normal mode by pressing v and use normal commands there
" g<C-n> to match without boundaries
"
"let g:multi_cursor_use_default_mapping=0
" Default mapping
"let g:multi_cursor_start_word_key      = '<C-n>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'
"mnemonic  Global
let g:multi_cursor_select_all_word_key = '<C-g>'

":MultipleCursorsFind <keyword>

"press I to insert text

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'junegunn/vim-easy-align'
vmap <localLeader>a <Plug>(EasyAlign)
nmap <localLeader>a <Plug>(EasyAlign)
"if !exists('g:easy_align_delimiters')
  "let g:easy_align_delimiters = {}
"endif
"let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }
" `<Space>`, `=`, `:`, `.`, `|`, `&`, `#`, and `,`.
" #### `=`
" `=` Around the 1st occurrences
" `2=` Around the 2nd occurrences
" `*=` Around all occurrences
" `**=` Left/Right alternating alignment around all occurrences
" `<Enter>` Switching between left/right/center alignment modes

"#### `<Space>`
" `<Space>` Around the 1st occurrences of whitespaces
" `2<Space>` Around the 2nd occurrences
" `-<Space>` Around the last occurrences
" `<Enter><Enter>2<Space>` Center-alignment around the 2nd occurrences

" #### `,`
" The predefined comma-rule places a comma right next to the preceding token
  "without margin (`{'stick_to_left': 1, 'left_margin': 0}`)
"- You can change it with `<Right>` arrow
"### Using regular expression
"You can use an arbitrary regular expression by
" pressing `<Ctrl-X>` in interactive mode
" or using `:EasyAlign /REGEX/` command in visual mode or in normal mode with
" a range (e.g. `:%`)

"nmap ga <Plug>(EasyAlign)
"xmap ga <Plug>(EasyAlign)
" `ga` key in visual mode, or `ga` followed by a motion or a text
   "object to start interactive mode
" (Optional) Enter keys to cycle between alignment mode (left, right, or center)
" (Optional) N-th delimiter (default: 1)
    "- `1`         Around the 1st occurrences of delimiters
    "- `2`         Around the 2nd occurrences of delimiters
    "- ...
    "- `*`         Around all occurrences of delimiters
    "- `**`        Left-right alternating alignment around all delimiters
    "- `-`         Around the last occurrences of delimiters (`-1`)
    "- `-2`        Around the second to last occurrences of delimiters
    "- ...
" Delimiter key (a single keystroke;
" `<Space>`, `=`, `:`, `.`, `|`, `&`, `#`, `,`)
" or an arbitrary regular expression followed by `<CTRL-X>`

"#### Using `:EasyAlign` command
" Using predefined rules
":EasyAlign[!] [N-th] DELIMITER_KEY [OPTIONS]

" Using regular expression
":EasyAlign[!] [N-th] /REGEXP/ [OPTIONS]

"| Key       | Description/Use cases                                                |
"| --------- | -------------------------------------------------------------------- |
"| `<Space>` | General alignment around whitespaces                                 |
"| `=`       | Operators containing equals sign (`=`, `==,` `!=`, `+=`, `&&=`, ...) |
"| `:`       | Suitable for formatting JSON or YAML                                 |
"| `.`       | Multi-line method chaining                                           |
"| `,`       | Multi-line method arguments                                          |
"| `&`       | LaTeX tables (matches `&` and `\\`)                                  |
"| `#`       | Ruby/Python comments                                                 |
"| `"`       | Vim comments                                                         |
"| `<Bar>`   | Table markdown                                                       |

"define your own rules with `g:easy_align_delimiters`

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'roxma/vim-paste-easy'
"let g:paste_easy_message=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'tpope/vim-surround'

"Delete surroundings is *ds*
"Change surroundings is *cs*

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
"" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"[count]<leader>cc |NERDCommenterComment|
"Comment out the current line or text selected in visual mode.
"[count]<leader>cn |NERDCommenterNested|
"Same as cc but forces nesting.
"[count]<leader>c<space> |NERDCommenterToggle|
"Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
"[count]<leader>cm |NERDCommenterMinimal|
"Comments the given lines using only one set of multipart delimiters.
"[count]<leader>ci |NERDCommenterInvert|
"Toggles the comment state of the selected line(s) individually.
"[count]<leader>cs |NERDCommenterSexy|
"Comments out the selected lines with a pretty block formatted layout.
"[count]<leader>cy |NERDCommenterYank|
"Same as cc except that the commented line(s) are yanked first.
"<leader>c$ |NERDCommenterToEOL|
"Comments the current line from the cursor to the end of line.
"<leader>cA |NERDCommenterAppend|
"Adds comment delimiters to the end of line and goes into insert mode between them.
"|NERDCommenterInsert|
"Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
"<leader>ca |NERDCommenterAltDelims|
"Switches to the alternative set of delimiters.
"[count]<leader>cl |NERDCommenterAlignLeft [count]<leader>cb |NERDCommenterAlignBoth
"Same as |NERDCommenterComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
"[count]<leader>cu |NERDCommenterUncomment|
"Uncomments the selected line(s).

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'mbbill/undotree'
nmap <M-7>  :UndotreeToggle <CR>
exec "set <M-7>=\e7"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 'kshenoy/vim-signature'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'junegunn/vim-peekaboo'
" show the contents of the registers on the sidebar
" when you hit " or @ in normal mode or <CTRL-R> in insert mode.
let g:peekaboo_window = 'vsplit 30new'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'tpope/vim-unimpaired'

"mnemonic:
" "a" commands is "args"
" "b" commands is "buffer"
" "l" commands is "location"
" "q" commands is "quickfix"
" "t" commands is "tag"
" "p" commands is "tag preview"
"[a     :previous
"]a     :next
"[A     :first
"]A     :last
"[b     :bprevious
"]b     :bnext
"[B     :bfirst
"]B     :blast
"[l     :lprevious
"]l     :lnext
"[L     :lfirst
"]L     :llast
"[<C-L> :lpfile
"]<C-L> :lnfile
"[q     :cprevious
"]q     :cnext
"[Q     :cfirst
"]Q     :clast
"[<C-Q> :cpfile| (Note that <C-Q> only works in a terminal if you disable
"]<C-Q> :cnfile| flow control: stty -ixon)
"[t     :tprevious
"]t     :tnext
"[T     :tfirst
"]T     :tlast
"[<C-T> :ptprevious
"]<C-T> :ptnext
"[f  Go to file preceding the current one alphabetically in the current file's directory.
"]f  Go to file succeeding the current one alphabetically in the current file's directory.
"[n  Go to previous SCM conflict marker or diff/patch hunk.  Try d[n inside a conflict.
"]n  Go to next SCM conflict marker or diff/patch hunk.  Try d]n inside a conflict.
"[<Space>                Add [count] blank lines above the cursor.
"]<Space>                Add [count] blank lines below the cursor.
"[e                      Exchange the current line with [count] lines above it.
"]e                      Exchange the current line with [count] lines below it.
"
"On     Off    Toggle Option
"[ob    ]ob    yob    'background' (dark is off, light is on)
"[oc    ]oc    yoc    'cursorline'
"[od    ]od    yod    'diff' (actually |:diffthis| / |:diffoff|)
"[oh    ]oh    yoh    'hlsearch'
"[oi    ]oi    yoi    'ignorecase'
"[ol    ]ol    yol    'list'
"[on    ]on    yon    'number'
"[or    ]or    yor    'relativenumber'
"[os    ]os    yos    'spell'
"[ou    ]ou    you    'cursorcolumn'
"[ov    ]ov    yov    'virtualedit'
"[ow    ]ow    yow    'wrap'
"[ox    ]ox    yox    'cursorline' 'cursorcolumn' (x as in crosshairs)
"The mnemonic for y is that if you tilt it a bit it looks like a switch.
"
">p    Paste after linewise, increasing indent.
">P    Paste before linewise, increasing indent.
"<p    Paste after linewise, decreasing indent.
"<P    Paste before linewise, decreasing indent.
"=p    Paste after linewise, reindenting.
"=P    Paste before linewise, reindenting.
"
"]p
"[p
"[P
"]P
"have also been remapped to force linewise pasting,
"while preserving their usual indent matching behavior.
"
"A toggle has not been provided for 'paste' because the typical use case of
"wrapping of a solitary insertion is inefficient:  You toggle twice, but
"you only paste once (YOPO).  Instead, press [op, ]op, or yop to invoke |O|,
"|o|, or |0||C| with 'paste' already set.  Leaving insert mode sets 'nopaste'
"automatically.
"
"ENCODING AND DECODING                           *unimpaired-encoding*
"
"Each of these operations has a map that takes a motion, a map that
"targets [count] lines, and a visual mode map.  The linewise variant integrates
"with repeat.vim.
"
"mnemonic: encoding always comes before decoding; "[" always comes before "]".
"[x{motion}              XML encode.
"[xx                     <foo bar="baz"> => &lt;foo bar=&quot;baz&quot;&gt;
"{Visual}[x
"]x{motion}              XML decode.  HTML entities are handled as well.
"]xx
"{Visual}]x
"[u{motion}              URL encode.
"[uu                     foo bar => foo%20bar
"{Visual}[u
"]u{motion}              URL decode.
"]uu
"{Visual}]u
"[y{motion}              C String encode.  Backslash escape control
"[yy                     characters, quotation marks, and backslashes.
"{Visual}[y
"]y{motion}              C String decode.
"]yy
"{Visual}]y

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'andymass/vim-matchup'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'junegunn/fzf'
"
"fzf --height 40% --reverse --border
"fzf --height 40% --layout=reverse --border
"
"CTRL-J / CTRL-K (or CTRL-N / CTRL-P) to move cursor up and down
"Enter key to select the item, CTRL-C / CTRL-G / ESC to exit
"
"fzf starts in "extended-search mode", multiple search terms delimited by spaces
"foo       fuzzy-match                   Items that match foo
"'wild     exact-match (quoted)          Items that include wild
"^music    prefix-exact-match            Items that start with music
".mp3$     suffix-exact-match            Items that end with .mp3
"!fire     inverse-exact-match           Items that do not include fire
"!^music   inverse-prefix-exact-match    Items that do not start with music
"!.mp3$    inverse-suffix-exact-match    Items that do not end with .mp3
"
"do not wish to "quote" every word,
"start fzf with -e or --exact option.
"Note that when --exact is set, '-prefix "unquotes" the term.
"
"A single bar character term acts as an OR operator.
"
"FZF_DEFAULT_COMMAND="ag --hidden --ignore .git --files-with-matches --filename-pattern ."
"FZF_DEFAULT_OPTS="--border  --preview 'cat {}'"
"man page (man fzf) for the full list of options.

"Plug 'junegunn/fzf.vim'

set rtp+=/home/dafan/local/bin
"let g:fzf_layout = { 'right': '~50%' }
"let g:fzf_layout = { 'window': '10new' }
"let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_tags_command = '/home/dafan/local/bin/ctags -R'
nmap <localleader>~ :FZF ~ <CR>
nmap <localleader>. :Files <CR>
nmap <localleader># :History <CR>
"ctrl-t: tab split
"
":Files [PATH]     Files (similar to :FZF)
":GFiles [OPTS]    Git files (git ls-files)
":GFiles?          Git files (git status)
":Buffers          Open buffers
":Colors           Color schemes
":Ag [PATTERN]     ag search result (ALT-A to select all, ALT-D to deselect all)
":Rg [PATTERN]     rg search result (ALT-A to select all, ALT-D to deselect all)
":Lines [QUERY]    Lines in loaded buffers
":BLines [QUERY]   Lines in the current buffer
":Tags [QUERY]     Tags in the project (ctags -R)
":BTags [QUERY]    Tags in the current buffer
":Marks            Marks
":Windows          Windows
":Locate PATTERN   locate command output
":History          v:oldfiles and open buffers
":History:         Command history
":History/         Search history
":Snippets         Snippets (UltiSnips)
":Commits          Git commits (requires fugitive.vim)
":BCommits         Git commits for the current buffer
":Commands         Commands
":Maps             Normal mode mappings
":Helptags         Help tags 1
":Filetypes        File types
"nmap <localleader><tab> <plug>(fzf-maps-n)
"xmap <localleader><tab> <plug>(fzf-maps-x)
"omap <localleader><tab> <plug>(fzf-maps-o)
nmap ? <plug>(fzf-maps-n)
xmap ? <plug>(fzf-maps-x)
omap ? <plug>(fzf-maps-o)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'Yggdroot/LeaderF'
" WARNING: "popup" feature conflict with easymotion,
" (indication does not highlighted, that is text does not faded)
"
"install C extension of the fuzzy matching algorithm, which is more than 10 times faster.
"cd ~/.vim/bundle/LeaderF &&  ./install.sh
"Uninstall the C extension: ./install.sh --reverse
"After running any command of LeaderF, check the value of echo g:Lf_fuzzyEngine_C,
"if the value is 1, it means the C extension is loaded sucessfully.
"
"fuzzyMatch.c:17:20: fatal error: Python.h: No such file or directory
"/usr/bin/ld: cannot find -lpython2.7
"the scripts assume -I/usr/include/python2.7    -L/usr/lib64
"~/local/share/vim/vim82/plugged/LeaderF/install.sh
"/home/dafan/local/share/vim/vim82/plugged/LeaderF/autoload/leaderf/fuzzyMatch_C/setup.py
"module1 = Extension("fuzzyMatchC",
"                    sources = ["fuzzyMatch.c"],
"                    include_dirs = ["/opt/python/x86_64/2.7.3-8/include/python2.7"],
"                    library_dirs = ['/opt/python/x86_64/2.7.3-8/lib'])

"module2 = Extension("fuzzyEngine",
"                    sources = ["fuzzyMatch.c", "fuzzyEngine.c"],
"                    include_dirs = ["/opt/python/x86_64/2.7.3-8/include/python2.7"],
"                    library_dirs = ['/opt/python/x86_64/2.7.3-8/lib'])
"
let g:Lf_RootMarkers = ['.project', '.root', '.git']
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_CursorBlink = 1
let g:Lf_ShowRelativePath = 0
let g:Lf_PreviewInPopup = 1
let g:Lf_Ctags = "/home/dafan/local/bin/ctags"
let g:Lf_ShowHidden = 1
let g:Lf_UseCache = 0
"let g:Lf_CacheDiretory = '~/.cache/lf'
"let g:Lf_WindowPosition = 'popup'
"let g:Lf_PopupColorscheme = 'desert'
":LeaderfFile [directory]
"<leader>f                Launch LeaderF to search files.
":LeaderfBuffer
"<leader>b                Launch LeaderF to search buffers.
":LeaderfBufferAll        Same as LeaderfBuffer, except the unlisted buffers are shown.
":LeaderfMru              search Mru.
":LeaderfMruCwd           search Mru in current working directory.
":LeaderfTag              navigate tags.
":LeaderfBufTag           navigate tags in current buffer.
":LeaderfBufTagAll        navigate tags in all listed buffers.
":LeaderfFunction         navigate functions or methods in current buffer.
":LeaderfFunctionAll      navigate functions in all listed buffers.
":LeaderfLine             search a line in current buffer.
":LeaderfLineAll          search a line in all listed buffers.
":LeaderfHistoryCmd       execute the command in the history.
":LeaderfHistorySearch    execute the search command in the history.
":LeaderfSelf             execute the commands of itself.
":LeaderfHelp             navigate the help tags.
":LeaderfColorscheme      switch between colorschemes.
":LeaderfFiletype         navigate the filetype.
":LeaderfCommand          execute user-defined/built-in Ex commands.
":LeaderfWindow           search windows.
":LeaderfRgInteractive    use rg interactively.
":LeaderfRgRecall         Recall last search of rg.
"
"<Plug>LeaderfGtagsDefinition
"    Show <cword> or selected text locations of definitions.
"<Plug>LeaderfGtagsReference
"    Show <cword> or selected text reference to a symbol which has definitions.
"<Plug>LeaderfGtagsSymbol
"    Show <cword> or selected text reference to a symbol which has no definition.
"<Plug>LeaderfGtagsGrep
"    Show all lines which match to the <cword> or selected text .

"<C-C>, <ESC> : quit from LeaderF.
"<C-R> : switch between fuzzy search mode and regex mode.
"<C-F> : switch between full path search mode and name only search mode.
"<Tab> : switch to normal mode.
"<C-V>, <S-Insert> : paste from clipboard.
"<C-U> : clear the prompt.
"<C-W> : delete the word before the cursor in the prompt.
"<C-J>, <C-K> : navigate the result list.
"<Up>, <Down> : recall last/next input pattern from history.
"<CR> : open the file under cursor or selected(when multiple files are selected).
"<C-X> : open in horizontal split window.
"<C-]> : open in vertical split window.
"<C-T> : open in new tabpage.
"<F5>  : refresh the cache.
"<C-S> : select multiple files.
"<C-A> : select all files.
"<C-L> : clear all selections.
"<BS>  : delete the preceding character in the prompt.
"<Del> : delete the current character in the prompt.
"<Home>: move the cursor to the begin of the prompt.
"<End> : move the cursor to the end of the prompt.
"<Left>: move the cursor one character to the left.
"<Right> : move the cursor one character to the right.
"<C-P> : preview the result.
"<C-Up> : scroll up in the popup preview window.
"<C-Down> : scroll down in the popup preview window.

"cmdHistory/searchHistory/command only mappings:
"    <C-o> : edit command under cursor.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'liuchengxu/vim-clap'
" WARNING: default "popup" feature conflict with easymotion,
" (indication does not highlighted, that is text does not faded)
"
"Command                list                                  Requirement
"Clap bcommits!         Git commits for the current buffer    git
"Clap blines            Lines in the current buffer           none
"Clap buffers           Open buffers                          none
"Clap colors            Colorschemes                          none
"Clap command           Command                               none
"Clap hist:
"Clap command_history   Command history                       none
"Clap hist/
"Clap search_history    Search history                        none
"Clap commits !         Git commits                           git
"Clap files             Files                                 fd/git/rg/find
"Clap filetypes         File types                            none
"Clap gfiles
"Clap git_files         Files managed by git                  git
"Clap git_diff_files    Files managed by git and having uncommitted changes    git
"Clap grep+             Grep on the fly                       rg
"Clap history           Open buffers and v:oldfiles           none
"Clap help_tags         Help tags                             none
"Clap jumps             Jumps                                 none
"Clap lines             Lines in the loaded buffers           none
"Clap marks             Marks                                 none
"Clap maps              Maps                                  none
"Clap quickfix          Entries of the quickfix list          none
"Clap loclist           Entries of the location list          none
"Clap registers         Registers                             none
"Clap tags              Tags in the current buffer            vista.vim
"Clap yanks             Yank stack of the current vim session none
"Clap filer             Ivy-like file explorer                maple
"Clap providers         List the vim-clap providers           none
"Clap windows !         Windows                               none

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'mhinz/vim-signify'

"let g:signify_vcs_cmds = { 'git': 'git diff --no-color --no-ext-diff -U0 -- %f' }
"let g:signify_vcs_cmds_diffmode = { 'git': 'git show HEAD:./%f' }
"let g:signify_disable_by_default = 0
"let g:signify_skip_filetype = { 'vim': 1, 'c': 1 }
"let g:signify_skip_filename = { '/home/user/.vimrc': 1 }
"let g:signify_skip_filename_pattern = [ '*.out', '*.tmp', '*.log' ]
"let g:signify_line_highlight = 0
"let g:signify_sign_add               = '+'
"let g:signify_sign_delete            = '_'
"let g:signify_sign_delete_first_line = '‾'
"let g:signify_sign_change            = '!'
"let g:signify_fold_context    = 1
":SignifyEnable
":SignifyDisable
":SignifyToggle
"]c   Jump to the next hunk.
"[c   Jump to the previous hunk.
"]C   Jump to the last hunk.
"[C   Jump to the first hunk.
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)
"nmap <localleader>    :SignifyDiff<CR>
"nmap <localleader>    :SignifyToggleHighlight<CR>
"nmap <localleader>    :SignifyFold<CR>
"nmap <localleader>    :SignifyHunkDiff<CR>
"nmap <localleader>    :SignifyHunkUndo<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'tpope/vim-fugitive'
"man fugitive or Press g? or see fugitive-maps for usage.
nmap <localleader>g       :Git <CR>
nmap <localleader>w       :Gwrite <CR>
nmap <localleader>rebase  :Gfetch <bar> Grebase <CR>
nmap <localleader>push    :Gpush origin HEAD:refs/for/master <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'Valloric/YouCompleteMe' " Do not update
noremap <localleader>d :YcmCompleter GoTo <CR>
noremap <localleader>r :YcmCompleter GoToReferences <CR>
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
let g:ycm_use_clangd = "Always"
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_clangd_binary_path = "~/local/bin/clangd"
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_error_symbol
"let g:ycm_warning_symbol
"let g:ycm_enable_diagnostic_signs = 0
"g:ycm_echo_current_diagnostic = 0
"let g:ycm_filter_diagnostics = {}
"let g:ycm_always_populate_location_list = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_use_clangd = "Never"
let g:ycm_global_ycm_extra_conf = '~/local/centos/config/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_max_diagnostics_to_display = 1000
let g:ycm_semantic_triggers =  { 'c,cpp,bash,python,java,go,erlang,perl': ['re!\w{2}'] }
let g:ycm_filetype_whitelist = { 'cpp': 1, 'bash': 1 }
let g:ycm_filetype_blacklist = { 'tagbar': 1, 'notes': 1, 'markdown': 1, 'netrw': 1, 'unite': 1, 'text': 1, 'vimwiki': 1, 'pandoc': 1, 'infolog': 1, 'mail': 1 }
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
highlight PMenu ctermfg=9 ctermbg=4
highlight PMenuSel ctermfg=10 ctermbg=1
" YcmRestartServer
" YcmForceCompileAndDiagnostics
" YcmShowDetailedDiagnostic
" YcmToggleLogs
" YcmDebugInfo
" YcmDiags
" YcmCompleter
":YcmCompleter FixIt <CR>
":YcmCompleter GetType <CR>
":YcmCompleter GoTo <CR>
":YcmCompleter GoToDeclaration <CR>
":YcmCompleter GoToDefinition <CR>
":YcmCompleter GoToInclude <CR>
":YcmCompleter GoToReferences <CR>
":YcmCompleter RefactorRename

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'prabirshrestha/vim-lsp'
"Plug 'natebosch/vim-lsc'
"
"Plug 'dense-analysis/ale'
"let g:ale_sign_column_always = 0
"let g:ale_lint_on_text_changed = 'normal'
"let g:ale_lint_on_insert_leave = 1
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1
"let g:ale_linters_explicit = 1
"let b:ale_linters = ['clang']
"let g:ale_cpp_clang_options = '
    "\ -fPIC
    "\ -O2
    "\ -g
    "\ -DDEBUG
    "\ -m64
    "\ -std=c++11
    "\ -Wall
    "\ -Wno-conversion
    "\ -Wno-sign-conversion
    "\ -Wno-reorder
    "\ -DLINUX
    "\ -D_REENTRANT
    "\ -D_POSIX_PTHREAD_SEMANTICS
    "\ '

"let g:airline#extensions#ale#enabled = 1

"noremap <silent> <leader>ld :ALEGoToDefinition<cr>
"noremap <silent> <leader>ls :ALESymbolSearch
"noremap <silent> <leader>lr :ALEFindReferences<cr>
"noremap <silent> <leader>lh :ALEHover<cr>
"noremap <silent> <leader>le :ALEDetail<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'Shougo/echodoc.vim'
let g:echodoc#enable_at_startup = 1
" "echo", "signature", "virtual" or "floating"
let g:echodoc#type = 'popup'
highlight link EchoDocPopup Pmenu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'vim-scripts/gtags.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
"
let g:gutentags_project_root = [ '.git', '.project', '.root' ]
let g:gutentags_add_default_project_roots = 0
let g:gutentags_exclude_project_root = [ 'obj' ]
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_tagfile = '.gutentags'
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 'cscope' will polute current directory with GTAGS GPATH GRTAGS
"let g:gutentags_modules = [ 'ctags', 'cscope', 'gtags_cscope' ]
let g:gutentags_modules = [ 'ctags', 'gtags_cscope' ]
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
let g:gutentags_ctags_exclude_wildignore = 1
let g:gutentags_cscope_executable = "gtags-cscope"
let g:gutentags_define_advanced_commands = 1
let g:gutentags_trace = 0
let g:gutentags_plus_switch = 1
let g:gutentags_plus_nomap = 1
"let g:gutentags_file_list_command = 'ag --filename-pattern c --files-with-matches'
"let g:gutentags_ctags_exclude = [ 'obj' ]
let g:airline#extensions#gutentags#enabled = 1

" use global-cscope like cscope
set cscopeprg=gtags-cscope
"noremap <silent> <leader>gr :GscopeFind<Space>
noremap <silent> <localleader>s :GscopeFind s <C-R><C-W><cr>
"noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
"noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
"noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
"noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
"noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
"noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
"noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
"noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'dyng/ctrlsf.vim'
noremap <localLeader>t :CtrlSF<Space>
let g:ackprg='ag'
let g:ctrlsf_regex_pattern=1
let g:ctrlsf_position='right'
let g:ctrlsf_winsize = '50%'
"let g:ctrlsf_winsize = '120'
"nmap <leader>tf :CtrlSFToggle <CR>
nmap <M-4>  :CtrlSFToggle <CR>
exec "set <M-4>=\e4"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'skywind3000/vim-preview'
let g:preview#preview_position = "right"
"nmap <leader>vq :PreviewQuickfix <CR>
"nmap <leader>vf :PreviewFile <Space>
"nmap <C->vf :PreviewScroll +1<CR>
"nmap <leader>vb :PreviewScroll -1<CR>
"nmap <leader>vs :PreviewSignature <CR>
nmap <localleader>p :PreviewTag <CR>
nmap <C-t> :PreviewGoto tabnew <CR>
nmap <C-k> :PreviewScroll -1<cr>
nmap <C-j> :PreviewScroll +1<cr>
nmap <M-5> :PreviewClose <CR>
exec "set <M-5>=\e5"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'majutsushi/tagbar'
nmap <M-8>  :TagbarToggle <CR>
exec "set <M-8>=\e8"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'liuchengxu/vista.vim'
"nmap <leader>tv :Vista!!<CR>
"let g:vista#executives = ['ale', 'ctags', 'gtags']
"let g:vista#finders = ['fzf', 'ag' ]
"let g:vista_fzf_preview = ['right:50%']
"let g:vista_sidebar_width  = 120

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 'tpope/vim-repeat'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 't9md/vim-choosewin'
let g:choosewin_overlay_enable = 1
nmap <C-w> <Plug>(choosewin)
"Key    Action       Description
"0      tab_first    Select FIRST tab
"[      tab_prev     Select PREVIOUS tab
"]      tab_next     Select NEXT tab
"$      tab_last     Select LAST tab
"x      tab_close    Close current tab
"-      previous     Naviage to previous window
"s      swap         Swap windows #1
"S      swap_stay    Swap windows but stay #1
";      win_land     Navigate to current window
"<CR>   win_land     Navigate to current window
"       <NOP>        Disable predefined keymap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'Valloric/ListToggle'
"let g:loaded_listtoggle = 1
"let g:lt_height = 120
"let g:lt_quickfix_list_toggle_map = '<M-2>'
"exec "set <M-2>=\e2"
"let g:lt_location_list_toggle_map = '<M-8>'
"exec "set <M-8>=\e8"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'dhruvasagar/vim-zoom'
nmap <M-1>  <Plug>(zoom-toggle)
exec "set <M-1>=\e1"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 1
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 4
"let g:indentLine_char = '|'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
nmap <M-9>  :IndentLinesToggle <CR>
exec "set <M-9>=\e9"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'nathanaelkane/vim-indent-guides'
"nmap <leader> :IndentGuidesToggle <CR>
"let g:indent_guides_enable_on_vim_startup = 0
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'skywind3000/vim-quickui'
noremap <leader><space> :call quickui#menu#open()<cr>
noremap <leader><space>l :call quickui#listbox#open(content, opts)<cr>
call quickui#menu#reset()

"call quickui#menu#install(section, items ['text', 'command', 'tip']])
call quickui#menu#install('R',
\   [
\       [ 'run' , 'echo "AsyncRun <command>"', 'asynchronously run command' ],
\       [ 'stop', 'AsyncStop'                , 'stop running command'       ],
\       [ '--'         , ''                         , ''                           ],
\   ]
\)

call quickui#menu#install('T',
\   [
\       [ 'tab Alt-n <M-n>', 'echo "tabnext n"', 'switch to tabnext n' ],
\       [ '--'                    , ''                         , ''    ],
\   ]
\)

call quickui#menu#install('B',
\   [
\       [ 'buffer Ctrl-@ n', 'bnext', 'buffer n' ],
\       [ '--'             , ''     , ''         ],
\   ]
\)
noremap <leader>hm :call quickui#menu#open()<cr>

" enable to display tips in the cmdline
let g:quickui_show_tip = 1


let content = [
    |   ¦   \ [ 'c++11',           '' ],
    |   ¦   \ [ 'Python3.6',       '' ],
    |   ¦   \ [ 'Boost',           '' ],
    |   ¦   \ [ 'STL',             '' ],
    |   ¦   \ [ '/usr/include',    '' ],
    |   ¦   \ [ 'design patterns', '' ],
    |   ¦   \]
let opts = {'foo': 'priority'}

noremap <leader>hl :call quickui#listbox#open(content, opts)<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_symbols_ascii = 1
let g:airline_detect_paste = 1
let g:airline_detect_modified = 1
let g:airline_inactive_collapse = 1
"let g:airline#extensions#tabline#tabs_label = 't'
"let g:airline#extensions#tabline#buffers_label = 'b'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'itchyny/lightline.vim'    "simpler status line
"let g:lightline = {
"      \ 'colorscheme': 'powerline',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch' ], [ 'path' ], [ 'gutentags' ] ],
"      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
"      \ },
"      \ 'component': {
"      \   'charvaluehex': '0x%B',
"      \   'path': '%F'
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'fugitive#head',
"      \   'gutentags': 'gutentags#statusline',
"      \ },
"      \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
let g:rainbow_conf = {
\    'ctermfgs': ['green', 'magenta', 'cyan', 'yellow', 'blue', 'red', 'darkgreen', 'darkmagenta', 'darkcyan', 'darkyellow', 'darkblue', 'darkred'],
\    'operators': '_,\|/\|<\|>\|?\|;\|:\|"\|!\|%\|&\|*\|+\|-\|=_',
\    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'ntpeters/vim-better-whitespace'
"nmap <leader>ts :ToggleWhitespace<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'flazz/vim-colorschemes'
"colorscheme molokai

