" My confis
set number
set relativenumber

set noet ci pi sts=0 sw=4 ts=4
syntax on
set cursorline
set wildmode=longest,list
set hidden

set ignorecase
set mouse=a

set splitright 

" Spelling
" setting spelling globally
" set spell spelllang=pt_br
autocmd Filetype tex setlocal spell spelllang=pt_br,en_us
autocmd Filetype text setlocal spell spelllang=pt_br,en_us
autocmd Filetype vimwiki setlocal spell spelllang=pt_br,en_us

autocmd BufNewFile,BufRead *.qss setfiletype css


" Set the current directory to be the root
set autochdir
" Indentation
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype java setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype c setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype sh setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype vim setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype cs setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype lua setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype svg setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype tex setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype tex setlocal textwidth=80
autocmd Filetype racket setlocal tabstop=2 shiftwidth=2 textwidth=80 expandtab
" autocmd Filetype markdown setlocal textwidth=80
" autocmd Filetype tex setlocal fo=aw2tq
autocmd Filetype text setlocal textwidth=80
" autocmd Filetype text setlocal fo=aw2tq
"

" Vimtex
let g:tex_flavor = "latex"
let g:vimtex_compiler_progname = 'nvr'
let g:tex_conceal = ""
let g:tex_no_error=1
let g:tex_comment_nospell= 1
let g:vimtex_quickfix_open_on_warning = 0


" Terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif


" Vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/Edvan/GTD/Wiki', 'path_html': '~/Dropbox/Edvan/GTD/html/', 'syntax': 'markdown', 'ext': '.md', 'index': 'gtd'}]
let g:vimwiki_folding='list'



" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


call plug#begin('~/.config/nvim/plugged')
" vim-plug
  Plug 'https://github.com/junegunn/vim-plug.git'
  Plug 'sheerun/vim-polyglot'
  Plug 'https://github.com/tpope/vim-surround.git'
  Plug 'https://github.com/tpope/vim-commentary.git'
  Plug 'https://github.com/jiangmiao/auto-pairs.git'
  Plug 'https://github.com/tpope/vim-unimpaired.git'
  Plug 'lervag/vimtex'
  Plug 'gko/vim-coloresque'
  Plug 'tomasiser/vim-code-dark'
  Plug 'vimwiki/vimwiki'
  Plug 'tpope/vim-markdown'
  Plug 'wlangstroth/vim-racket'
  Plug 'Konfekt/FastFold'
  Plug 'alx741/vinfo'
  Plug 'SirVer/ultisnips'
  Plug 'alvan/vim-closetag'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'npm install --frozen-lockfile --production',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  Plug 'preservim/nerdtree'
call plug#end()


" Theme
syntax enable
" colorscheme tender "Tender is also nice
colorscheme codedark
" let g:airline_theme='molokai', "molokai is also nice
let g:airline_theme='codedark'

"
" auto close tag
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
