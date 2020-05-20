" Vim configuration file

" Vim plugin installation via vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.swp$']

Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
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

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ["standard"]
let g:syntastic_python_checkers = ["flake8"]

Plug 'itchyny/lightline.vim'
let g:lightline = {
  \      'colorscheme': 'wombat',
  \      'active': {
  \          'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \          'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \      },
  \ }

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

Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.\*', 'scp://.\*']

Plug 'mengelbrecht/lightline-bufferline'
let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number = 1
set showtabline=2
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

Plug 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

Plug 'Valloric/YouCompleteMe'
highlight Pmenu ctermfg=235 ctermbg=006

Plug 'dracula/vim',{'as':'dracula'}
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
set encoding=UTF-8

call plug#end()

" Custom Vim Key-Bindings
map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>
nnoremap <Space> <C-W><C-W>

" Custom Vim Settings
set number
set laststatus=2
set noshowmode
set listchars=space:·,tab:--
set list
let mapleader=","

" Allow buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-x> :bdelete<CR>
set hidden

" open nerdtree by default and close vim if nerd tree is the last open window
autocmd vimenter * NERDTree
autocmd vimenter * wincmd l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set backspace=indent,eol,start

