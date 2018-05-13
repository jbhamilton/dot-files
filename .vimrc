set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/taglist.vim'
"toggle taglist 
map <F10> :TlistToggle<CR>

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'rstacruz/sparkup'

Plugin 'Yggdroot/indentLine'
let g:indentLine_color_term = 183
nnoremap <S-i> :IndentLinesToggle<CR>

"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 0
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 0
"""Color for indent guides plugin
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=238
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=239

"Toggle guides on/off
"nnoremap <S-i> :IndentGuidesToggle <CR>

Plugin 'sjl/gundo.vim'
nnoremap <S-u> :GundoToggle<CR>

Plugin 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ [219, 'r'],
    \ [218, 'r'],
    \ [217, 'r'],
    \ [216, 'r'],
    \ [215, 'r'],
    \ [214, 'r'],
    \ [213, 'r'],
    \ [212, 'r'],
    \ [211, 'r'],
    \ [210, 'r'],
    \ [209, 'r'],
    \ [208, 'r'],
    \ [207, 'r'],
    \ [206, 'r'],
    \ [205, 'r'],
    \ [204, 'r'],
    \ [203, 'r'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

Plugin 'scrooloose/nerdtree'
"toggle nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

Plugin 'ap/vim-css-color'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'elixir-lang/vim-elixir'

Plugin 'fatih/vim-go'
let g:go_doc_keywordprg_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

Plugin 'SirVer/ultisnips'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'marijnh/tern_for_vim'

Plugin 'valloric/youcompleteme'
let g:ycm_autoclose_preview_window_after_insertion = 1

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='violet'

Plugin 'tpope/vim-fugitive'

call vundle#end()

"let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])

"YCM <C-Space> doesn't work so we force it to another map
inoremap <C-L> <C-x><C-o><C-p>

filetype plugin indent on

syntax on                           " Syntax highlighting
set background=dark
set t_Co=256
colorscheme default
"colorscheme solarized

"http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
highlight Pmenu ctermfg=33 ctermbg=0
highlight PmenuSel ctermfg=15 ctermbg=27
"highlight Search ctermfg=235 ctermbg=197
highlight Search ctermfg=235 ctermbg=116
"highlight CursorLine cterm=underline ctermfg=69 ctermbg=NONE
highlight Visual ctermfg=NONE ctermbg=62

set ruler
set cursorline 
set cuc                                                 "cursor column
hi CursorColumn ctermfg=white ctermbg=NONE cterm=NONE
"highlight StatusLine ctermfg=black ctermbg=gray cterm=NONE
highlight StatusLine ctermfg=235 ctermbg=68 cterm=NONE
highlight StatusLineNC ctermfg=black ctermbg=yellow cterm=NONE
hi clear SpellBad
hi SpellBad ctermfg=196 cterm=underline



set title
set laststatus=2                    " Always show the statusline
set encoding=utf-8                  " unicode!

set history=500
set undolevels=500

set number
"set relativenumber                "relative number line.. a bit annoying
set hidden                        "hide buffers when not displayed
set showmatch
set showcmd
set hlsearch
set ignorecase
set smartcase                       "this overwrites the ignore case if search patter contains upper

set mouse=v                         "use mouse in visual mode, not others.

set scrolloff=5
set sidescrolloff=10                " Number of cols from horizontal edge to start scrolling
set sidescroll=2                    " Number of cols to scroll at a time
set softtabstop=4
set shiftwidth=4
set expandtab                       "turns tabs into spaces
set smarttab
set bs=indent,eol,start             "allow backspacing over everything in insert mode
set autoindent
set copyindent
set smartindent
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'

set pastetoggle=<F3>

set splitright splitbelow
set columns=320

"custom invisibles 
"set list
"set listchars=trail:~,eol:^


" allow freeform selection (i.e. ignoring line endings) in visual block mode
set virtualedit+=block

" Switch on folding between all braces
set foldenable
setlocal foldmethod=indent
set foldcolumn=2
set foldlevelstart=1
set foldnestmax=2
"set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

"let $toggleAllFolds=0
"function ToggleAllFolds()
"if $toggleAllFolds==0
"    :exe "normal zr"
"    let $toggleAllFolds=1
"else
"    :exe "normal zm"
"    let $toggleAllFolds=0
"endif
"endfunction

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
"nnoremap zz :call ToggleAllFolds()<CR>

au BufWinLeave ?* mkview 1
"au BufWinEnter ?* silent loadview 1

"skip wrapped lines while moving in command mode
nnoremap j gj
nnoremap k gk

"enter search matches when jumping
map N Nzz
map n nzz

" Tab indenting
nnoremap <Tab> >>
nnoremap <S-Tab> <<

" select all
map <Leader>a ggVG

map Q @@                               "Map Q to repeat the last recorded macro 

"keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


" absolute line numbers in insert mode, relative otherwise for easy movement
"au InsertEnter * :set rnu
"au InsertLeave * :set nu

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"jump to start and end of line using home keys
noremap H ^
noremap L $

"change leader key
let mapleader = ","


set shortmess=atI                   "ignores "Press ENTER or type command to continue" and others

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

set wrap
"set textwidth=115
set formatoptions=qrn1
"set colorcolumn=120
set undofile                        "allows you to undo after reopening


"enter search matches when jumping
map N Nzz
map n nzz

"nnoremap ' :
nnoremap ; <Esc>

noremap K <Esc>:buffers<CR>:buffer<Space>

imap kj <Esc>
imap jk <Esc>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Map F2 to comment the selected lines in visual mode (// style)
vmap <F2> :s/^/\/\/\ /g <CR> :noh <CR>
" Map F3 to uncomment the selected lines in visual mode
vmap <F3> :s/^\/\/\ //g <CR> :noh <CR>


"use arrow key to switch buffers
:noremap <left> :bp<CR>
:noremap <right> :bn<CR>



"ever notice a slight lag after typing the leader key + command? This lowers the timeout.
set timeoutlen=250

set rtp+=$GOROOT/misc/vim

:noremap <F4> :call ToggleSpellCheck()<cr>
let g:spellcheck_on = 0
function! ToggleSpellCheck()
    if g:spellcheck_on
        set nospell
        let g:spellcheck_on = 0
    else 
        set spell spelllang=en_us
        let g:spellcheck_on = 1
    endif
endfunction


au BufNewFile,BufRead *.html set filetype=htmldjango

"Increase the width of the current window
noremap <A-Right> :vertical resize +5 <CR>
"Decrease the width of the current window
noremap <A-Left> :vertical resize -5 <CR>

"Increase the height of the current window
noremap <A-Up> :resize +5 <CR>
"Decrease the height of the current window
noremap <A-Down> :resize -5 <CR>
