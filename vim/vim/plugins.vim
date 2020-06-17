"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"    -> Enable vim-plug
"    -> Colorscheme
"    -> YouCompleteMe
"    -> Vim-smooth-scroll
"    -> Nerd Tree
"    -> Multicursor
"    -> Yankstack
"    -> Fzf
"    -> Git fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'valloric/YouCompleteMe'
Plug 'junegunn/fzf', {'do': {-> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'preservim/nerdtree'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'morhetz/gruvbox'
Plug 'vim-scripts/peaksea'
Plug 'joshdick/onedark.vim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>gd :YcmCompleter GoTo<CR>
map <leader>gr :YcmCompleter GoToReferences<CR>
map <leader>gt :YcmCompleter GoToType<CR>
map <leader>rr :YcmCompleter RefactorRename<CR>
autocmd FileType python setlocal completeopt-=preview
let g:jedi#completions_enabled = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-smooth-scroll 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0.1, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0.1, 2)<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=27
map <leader>1 :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Multicursor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Yankstack 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fzf 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-f> :Files<CR>
nmap <leader>b :Buffer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>gs :G<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python Mode 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode_rope_goto_definition_bind = '<leader>gd'
let g:pymode_breakpoint_bind = '<leader>d'
nmap <leader>pf :PymodeLintAuto<CR>
nmap <leader>pl :PymodeLint<CR>
let g:pymode_lint_options_pep8 = {'max_line_length': 140}  
let g:pymode_lint_on_write = 1
let g:pymode_options_colorcolumn = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GitGutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_sign_removed = '-'
