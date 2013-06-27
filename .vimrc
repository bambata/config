let mapleader=','

filetype off
call pathogen#incubate()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" u FileType python set omnifunc=pythoncomplete#Complete
" let g:SuperTabDefaultCompletionType = "context"

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

colors django

autocmd BufEnter * silent! lcd %:p:h

map <leader>n :NERDTreeToggle<CR>

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

set number

set completeopt=menuone,longest,preview

let g:snippets_dir="~/.vim/snippets/"

let g:pep8_map='<leader>!'

let g:pyflakes_use_quickfix = 0

let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'
let g:SuperTabMappingTabLiteral = '<tab>'


call ExtractSnipsFile(g:snippets_dir.'django.snippets', 'python')
call ExtractSnipsFile(g:snippets_dir.'python.snippets', 'python')
