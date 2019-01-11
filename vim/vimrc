set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
"------------------
" IDE
"------------------
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'scrooloose/snipmate-snippets'
Plug 'mattn/emmet-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/neocomplcache.vim'


"------- langs ---------
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-endwise'

" yadr
" appearence
Plug 'chrisbra/color_highlight'
Plug 'skwp/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'

" languages
Plug 'sheerun/vim-polyglot'
Plug 'jtratner/vim-flavored-markdown'
Plug 'nelstrom/vim-markdown-preview'
Plug 'skwp/vim-html-escape'
Plug 'omnisharp/omnisharp-vim'
Plug 'fsharp/vim-fsharp'

" project
Plug 'ctrlpvim/ctrlp.vim'
Plug 'JazzCore/ctrlp-cmatcher'
Plug 'junegunn/fzf'
Plug 'xolox/vim-misc'

"--------------
" Color Schemes
"--------------
Plug 'rickharris/vim-railscasts'


call plug#end()


filetype plugin indent on    " required

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
set background=dark
" colorscheme railscasts

" Leader
let mapleader = ","

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase
set cursorline

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set wrap                                                          " wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmode
set hidden
set visualbell
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set clipboard=unnamed
set wildmenu
set wildmode=list:longest
set completeopt=longest,menu
" set relativenumber

" Backup stuff
set nobackup
set nowritebackup
set noswapfile

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=2       " tab width
set softtabstop=2   " backspace
set shiftwidth=2    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

" Filetype handling
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>e'

" Tagbar
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif


" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>ff :NERDTreeFind<CR>

" ZenCoding
let g:user_zen_expandabbr_key='<C-e>'

" Keybindings for plugin toggle
nmap <leader>tb :TagbarToggle<cr>
nmap <leader>ig :IndentGuidesToggle<cr>

" Use the damn hjkl keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" And make them fucking work, too.
nnoremap j gj
nnoremap k gk

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>v <C-w>v<C-w>l
map <leader>h <C-w>s

" Clean whitespace
map <leader>ws :FixWhitespace<cr>

" Ack
map <leader>a :Ack<Space>

" Faster Esc
inoremap jj <ESC>

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

highlight SpellBad term=underline gui=undercurl guisp=Orange

" clear search selection
map <leader><space> :noh<cr>

" RagTag Mappings
"</<C-X><C-O>
imap <leader>. <C-X>/
imap <leader>, <C-X>-
imap <leader>m <C-X>=

" Following three lines remove the auto copy function from VIM
set guioptions-=a
set guioptions-=A
set guioptions-=aA

autocmd BufNewFile,BufRead *_spec.rb  compiler rspec
au! BufRead,BufNewFile *.sass         setfiletype sass
au! BufRead,BufNewFile *.jst          setfiletype html
au! BufNewFile,BufRead *.prawn        setfiletype ruby
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" color railscasts

" highlight cursorline only in current window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" tabular
if exists(":Tabularize")
  nmap <Leader>44 :Tabularize /=<CR>
  vmap <Leader>44 :Tabularize /=<CR>
  nmap <Leader>55 :Tabularize /:\zs<CR>
  vmap <Leader>55 :Tabularize /:\zs<CR>
endif

" neocompl
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#enable_smart_case = 1

" Default # of completions is 100, that's crazy.
let g:neocomplete#max_list = 5

" Set minimum syntax keyword length.
let g:neocomplete#auto_completion_start_length = 3

" This makes sure we use neocomplete completefunc instead of
" the one in rails.vim, otherwise this plugin will crap out.
let g:neocomplete#force_overwrite_completefunc = 1

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

if has("gui_running")
  " C-Space seems to work under gVim on both Linux and win32
  inoremap <C-Space> <C-n>
else " no gui
  if has("unix")
    inoremap <Nul> <C-n>
  else
    " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

" Support for github flavored markdown
" via https://github.com/jtratner/vim-flavored-markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" solarized
au VimEnter * so ~/.vim/settings/solarized.vim

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤ "
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%') ? expand('%') : '[NoName]')
endfunction

" Use status bar even with single buffer
set laststatus=2

