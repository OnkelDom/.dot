set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set paste
set number
set hlsearch

:nmap <C-N><C-I> :set invrelativenumber<CR>
:nmap <C-N><C-N> :set invnumber<CR>

set laststatus=2

set t_Co=256
" colorscheme
colorscheme slate

filetype on
filetype plugin on

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

syntax on

" csv plugin
hi CSVColumnEven        ctermbg=0 ctermfg=10
hi CSVColumnOdd         ctermbg=0 ctermfg=14
hi CSVColumnHeaderEven  ctermbg=0 ctermfg=2
hi CSVColumnHeaderOdd   ctermbg=0 ctermfg=6
