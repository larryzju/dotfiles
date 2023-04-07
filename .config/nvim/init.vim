set rtp+=/opt/homebrew/opt/fzf

call plug#begin()
Plug 'hashivim/vim-terraform'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'avakhov/vim-yaml'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'fatih/vim-go'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'digitaltoad/vim-pug'
Plug 'aquach/vim-http-client'
Plug 'preservim/tagbar'
Plug 'baverman/vial'
Plug 'baverman/vial-http'
Plug 'nvim-lua/plenary.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

map <Leader>R :Rg <C-R><C-W><CR>
map <Leader>r :Rg 

map <Leader>F :call fzf#vim#files('.', fzf#vim#with_preview({'options':'--query '.expand('<cword>')}))<CR>
map <Leader>f :FZF<CR>

map <Leader>B :call fzf#vim#buffers(fzf#vim#with_preview({'options':'--query '.expand('<cword>')}))<CR>
map <Leader>b :Buffers<CR>

map <Leader>,f :NERDTreeFind<CR>

set mouse=
