set nocompatible
filetype off
set noshowmode

" map Ctrl-K to Esc
imap <C-K> <Esc>

filetype plugin on

" Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
Bundle 'bling/vim-airline'
Bundle 'christoomey/vim-sort-motion'
"Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'christoomey/vim-system-copy'
Bundle 'kana/vim-textobj-user'
"Bundle 'bps/vim-textobj-python'
Bundle 'rbonvall/vim-textobj-latex'
Bundle 'kana/vim-textobj-entire'
Bundle 'cypok/vim-sml'
Bundle 'rstacruz/sparkup'
"Bundle 'vim-syntastic/syntastic'
Bundle 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" _______________________________________________________________________
" The rest of your config follows here

" make backspace work like most other apps
set backspace=2

"shows horizontal and vertical line where the cursor is in the file
set cursorline cursorcolumn

"linebreaks after long line are indented correctly
set wrap
set breakindent

"sets character encoding
set encoding=utf8

" set linenumbers
set relativenumber
set number

"show syntax
syntax enable

"enable filetype detection
filetype on
filetype plugin on
filetype indent on

"enable mouse usage in GUI
if has("gui_running")
    set mouse=a
    else
        set mouse=
        endif

set t_Co=256

" disable creating of all sort of swapfiles
set nobackup
set nowb
set noswapfile

" This enables automatic indentation as you type.
set tabstop=4

" i want to see at least x lines above/below the cursor
set scrolloff=10

set history=999
set hlsearch
set showmatch

"shows number of columns and lines in powerbar
set ruler

"sets width for shifting with >> or << and tablength and converts tab to
"spaces
set shiftwidth=4
set tabstop=4
set expandtab

" Rust support
let g:ycm_rust_src_path="/home//Developer/rust-master/src/"

" __________________________________________________________________________
"autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" augroup vimrc_autocmds
"	    autocmd!
			    " highlight characters past column 120
				"     autocmd FileType python highlight Excess
				"     ctermbg=DarkGrey guibg=Black
				"         autocmd FileType python match Excess /\%120v.*/
				"             autocmd FileType python set nowrap
				"                 augroup END


" __________________________________ PLUGIN SETTINGS ______________________________________
"=> Airline setup 
" """"""""""""""""""""""""""""""
" " Always show the status line
set laststatus=2
" "let g:airline#extensions#tabline#enabled = 1
" fancy powerline fonts
let g:airline_powerline_fonts = 1
:let g:airline_theme='molokai'
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"disableing showing of trailing in current file
let g:airline#extensions#whitespace#show_message = 0

" => NERDTree setup
"""""""""""""""""""""""""""""
" toggle NerdTree
map <F2> :NERDTreeToggle<CR>

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator
" modes)
" ]]            Jump on next class or function (normal, visual, operator
" modes)
" [M            Jump on previous class or method (normal, visual, operator
"modes)
" ]M            Jump on next class or method (normal, visual, operator
"modes)
"let g:pymode_rope = 1

" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'

"Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
"let g:pymode_lint_write = 1

" Support virtualenv
"let g:pymode_virtualenv = 1

" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
"let g:pymode_folding = 0

" Latex Suite setup:
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
 filetype indent on
 
" Latex Suite settings:
augroup MyIMAPs
        au!
        au VimEnter * call IMAP('(', '(<++>)<++>', 'tex')
        au VimEnter * call IMAP('{', '{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\{', '\{<++>\}<++>', 'tex')
        au VimEnter * call IMAP('[', '[<++>]<++>', 'tex')
        au VimEnter * call IMAP('$', '$<++>$<++>', 'tex')
        au VimEnter * call IMAP('\s ', '\section{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\ss ', '\subsection{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\enumerate ', '\begin{enumerate}<++>', 'tex')
        au VimEnter * call IMAP ('\itemize ', '\begin{itemize}<++>','tex')
        au VimEnter * call IMAP('\bf ','\textbf{<++>}<++>','tex')
"
" NP Shortcuts
        au VimEnter * call IMAP('\automata','\begin{tikzpicture}[->,>=stealth<++>,shorten >=1pt,auto,node distance=2.8cm,semithick]<++>  \node[initial,state] (A) {$<++>$}<++> \end{tikzpicture}','tex')
        au VimEnter * call IMAP('\ellipseautomata','\begin{tikzpicture}[->,>=stealth<++>,shorten >=1pt,auto,node distance=2.8cm,semithick]<++> \tikzset{elliptic state/.style={draw,ellipse, minimum size=0pt}}<++> \node[initial, elliptic state] (A) {$<++>$}<++> \end{tikzpicture}','tex')
        au VimEnter * call IMAP('\prefix','\AxiomC{}<++>\prefixlabel\UnaryInfC{$<++>$}<++>','tex')
        au VimEnter * call IMAP('\choicel','\choicellabel\UnaryInfC{$<++>$}<++>','tex')
        au VimEnter * call IMAP('\choicer','\choicerlabel\UnaryInfC{$<++>$}<++>','tex')       
        au VimEnter * call IMAP('\parr','\parrlabel\UnaryInfC{$<++>$}<++>','tex')
        au VimEnter * call IMAP('\parl','\parllabel\UnaryInfC{$<++>$}<++>','tex')
        au VimEnter * call IMAP('\sync','\synclabel\BinaryInfC{$<++>$}<++>','tex')
        au VimEnter * call IMAP('\res','\reslabel\BinaryInfC{$<++>$}<++>','tex')
        au VimEnter * call IMAP('\rec','\reclabel\BinaryInfC{$<++>$}<++>','tex')
augroup END

let g:Tex_CompileRule_pdf = 'latexmk -pdf'


" Settings for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0 
