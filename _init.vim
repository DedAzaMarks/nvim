syntax on
set nu ru et
set ts=2 sts=2 sw=2
set cursorline
set hlsearch

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Set up the colours: gruvbox
Plug 'https://github.com/morhetz/gruvbox'

" Git plugin: vim-fugitive
Plug 'https://github.com/tpope/vim-fugitive'

" File explorer like vscode: nerdtree
" For nerdtree, user Ctrl+n to open the nerd tree, enter to expand the folder, then q to quit
Plug 'https://github.com/preservim/nerdtree'

" Find files
" User ctrl+p to search for key words
" Plug 'https://github.com/kien/ctrlp.vim'

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'neovim/nvim-lspconfig'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
" select the color scheme
colorscheme gruvbox

" Mirror the NERDTree before showing it. This makes it the same on all tabs.
map <silent> <C-n> :NERDTreeFocus<CR>
