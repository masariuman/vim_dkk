set t_Co=256
"set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256

execute pathogen#infect()
filetype plugin on
syntax on
"filetype plugin indent on


" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()


Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2

Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'qpkorr/vim-bufkill'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'acoustichero/goldenrod.vim'
colorscheme Tomorrow-Night
Plugin 'ervandew/supertab'
Plugin 'skwp/greplace.vim'
Plugin 'Yggdroot/indentLine'

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

Plugin 'airblade/vim-gitgutter'
Plugin 'alvan/vim-closetag'

" execute pathogen#infect()
let g:indentLine_char = 'â”†'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = 'Â·'
" Vim
let g:indentLine_color_term = 239

filetype plugin indent on
set number
set expandtab
set shiftwidth=2
set tabstop=2
set clipboard=unnamed
autocmd Filetype php setlocal shiftwidth=4 tabstop=4


 " filenames like *.xml, *.html, *.xhtml, ...
 " Then after you press <kbd>&gt;</kbd> in these files, this plugin will try
 " to close the current tag.
 " 
 let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.rb'
 
 " filenames like *.xml, *.xhtml, ...
 " This will make the list of non closing tags self closing in the specified
 " files.
 let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
 
 " integer value [0|1]
 " This will make the list of non closing tags case sensitive (e.g. `<Link>`
 " will be closed while `<link>` won't.)
 let g:closetag_emptyTags_caseSensitive = 1
 
 " Shortcut for closing tags, default is '>'
 let g:closetag_shortcut = '>'
 
 " Add > at current position without closing the current tag, default is ''
 let g:closetag_close_shortcut = '<leader>>'

 autocmd VimEnter * CloseTagEnableBuffer





autocmd BufWritePost * execute '! if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m %; fi'
