" Vim configuration file

" Vim plugin installation via vim-plug
call plug#begin('~/.vim/plugged')

" File tree explorer
Plug 'scrooloose/nerdtree'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.swp$']

" open nerdtree by default and close vim if nerd tree is the last open window
autocmd vimenter * NERDTree
autocmd vimenter * wincmd l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-o> :NERDTreeToggle<CR>

" Cute icons for the file tree explorer
Plug 'ryanoasis/vim-devicons'

" Git status indicator for file tree explorer
Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified" : "",
    \ "Staged" : "",
    \ "Untracked" : "",
    \ "Renamed" : "",
    \ "Unmerged" : "",
    \ "Deleted" : "",
    \ "Dirty" : "",
    \ "Clean" : "♥",
    \ "Ignored" : "",
    \ "Unknown" : ""
    \ }

" Line by line git status indicator for open files
Plug 'airblade/vim-gitgutter'
set updatetime=100
let g:gitgutter_sign_removed = '%%'
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'zz'
highlight GitGutterAdd ctermfg=2 ctermbg=235
highlight GitGutterChange ctermfg=3 ctermbg=235
highlight GitGutterDelete ctermfg=1 ctermbg=235

" Improved status line with colorization and extra doodads
Plug 'itchyny/lightline.vim'
let g:lightline = {
  \      'colorscheme': 'wombat',
  \      'active': {
  \          'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \          'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \      },
  \ }

" display open buffers
Plug 'mengelbrecht/lightline-bufferline'
let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number = 1
set showtabline=2
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" Allow buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-x> :bdelete<CR>
set hidden

" Color scheme
Plug 'dracula/vim',{'as':'dracula'}

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
map ; :Files<CR>

" Sublime-like multi-line editing
Plug 'terryma/vim-multiple-cursors'

" git plugin for gitting in vim
Plug 'tpope/vim-fugitive'

" don't mess up tabs and spaces
Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.\*', 'scp://.\*']

" Preview markdown files in browser
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
let g:mkdp_browser = 'firefox'
nmap <C-p> <Plug>MarkdownPreviewToggle

" autocomplete suggestions
Plug 'Valloric/YouCompleteMe'
highlight Pmenu ctermfg=235 ctermbg=006

" adjust your surroundings
Plug 'tpope/vim-surround'

" comment large sections
Plug 'scrooloose/nerdcommenter'

call plug#end()

" Custom Vim Key-Bindings
let mapleader=","
nnoremap <Space> <C-W><C-W>

" Custom Vim Settings
set number
set laststatus=2
set noshowmode
set listchars=space:·,tab:--
set list
set encoding=UTF-8
set backspace=indent,eol,start

