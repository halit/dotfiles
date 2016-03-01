" Syntax and file type configurations
set nocompatible
set autochdir
set tabstop=4
set shiftwidth=4
set expandtab
set number
set t_Co=256
set visualbell
set nopaste
set mouse=a

syntax on
filetype off

" Copy
map <C-c> :w !xsel -i -b<CR><CR>

" Init bundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'Lokaltog/vim-easymotion' 
Bundle 'kien/ctrlp.vim'
Bundle 'fholgado/minibufexpl.vim'
Plugin 'scwood/vim-hybrid'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/DrawIt'
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Fix youcompleteme and ultisnip
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

" Ultisnips
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger = '<leader>k'
let g:UltiSnipsListSnippets="<leader>l"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python2'

" Mapleader char
let mapleader = ","
let g:mapleader = ","

" Powerline setup
set guifont=Source\ Code\ Powerline\ 9
set laststatus=2
nmap <leader>l :set list!<CR>
let g:Powerline_symbols = 'fancy'

" Easy motion mappings
let g:EasyMotion_do_mapping = 0
nmap f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Ctrl-p mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Color scheme
colorscheme hybrid

" NerdTree mapping
map <Leader>c :NERDTreeToggle<CR>

" Tagbar mapping
nmap <Leader>t :TagbarToggle<CR>

" Paste mapping
nmap <Leader>po :set paste<CR>
nmap <Leader>pf :set nopaste<CR>

" Python 120 char
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" Python-mode
" Activate rope
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

let g:pymode_rope = 1
let g:pymode_rope_lookup_project = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
let g:pymode_rope_complete_on_dot = 0
