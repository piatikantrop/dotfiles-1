scriptencoding utf-8

function! HasPlugin(name) abort
  return has_key(g:plugs, a:name)
endfunction

call plug#begin(g:xdg_data_home . '/plugged')

" -- Utilities
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Support '.' correctly for plugins that support this module.
Plug 'tpope/vim-repeat'

" ds/cs/ys for deleting, changing, your surrounding chars (like ', ", etc.)
Plug 'tpope/vim-surround'

Plug 'tpope/vim-speeddating'

" Paired commands like:
"
" [<Space>                Add [count] blank lines above the cursor.
" ]<Space>                Add [count] blank lines below the cursor.
" [e                      Exchange the current line with [count] lines above it.
" ]e                      Exchange the current line with [count] lines below it.
Plug 'tpope/vim-unimpaired'

" Detect indentation
Plug 'tpope/vim-sleuth'

" lets you align comments, equal signs, etc.
Plug 'godlygeek/tabular'

" TOML
Plug 'cespare/vim-toml'

" Markdown syntax
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" Shows regions that were just yanked.
Plug 'machakann/vim-highlightedyank'

" Visualize the undo tree
Plug 'mbbill/undotree'

" Tags support; I recommend Universal Ctags
"   https://ctags.io/
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" Convert single line things to multi-line and back
"   gS - single -> multi
"   gJ - multi -> single
Plug 'AndrewRadev/splitjoin.vim'

" Whitespace trimming and highlighting
Plug 'ntpeters/vim-better-whitespace'

Plug 'metakirby5/codi.vim'
Plug 'justinmk/vim-dirvish'
Plug 'sgur/vim-editorconfig'

" Git & VCS support
Plug 'tpope/vim-fugitive'
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-rhubarb'

" Comments
Plug 'scrooloose/nerdcommenter'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" " TODO: Consider fzy instead? https://github.com/jhawthorn/fzy

" Neovim Development
Plug 'tweekmonster/nvimdev.nvim'
Plug 'tweekmonster/helpful.vim'
Plug 'syngan/vim-vimlint'
Plug 'ynkdir/vim-vimlparser'
Plug 'vim-scripts/Decho'

" Style/Lint
Plug 'dbakker/vim-lint'
Plug 'w0rp/ale'
Plug 'ruanyl/coverage.vim'

" Completion & Snippets
let g:coc_global_extensions = [
      \  'coc-css',
      \  'coc-emmet',
      \  'coc-highlight',
      \  'coc-html',
      \  'coc-dictionary',
      \  'coc-emoji',
      \  'coc-omni',
      \  'coc-tag',
      \  'coc-pairs',
      \  'coc-java',
      \  'coc-json',
      \  'coc-pyls',
      \  'coc-rls',
      \  'coc-snippets',
      \  'coc-solargraph',
      \  'coc-yaml',
      \  'coc-eslint',
      \  'coc-jest',
      \  'coc-prettier',
      \  'coc-tslint',
      \  'coc-tsserver',
      \ ]


Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }
" Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'Shougo/neoyank.vim'

" NGinX
Plug 'chr4/nginx.vim'

" Jekyll/Liquid
Plug 'tpope/vim-liquid'

" Javascript & JSON
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim' " TypeScript Syntax

" XML, HTML & CSS
Plug 'othree/html5.vim'
" TODO: Use polyglot instead? It's a curated list of languages, syntaxes, and indentations.
" Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-ragtag'

" Show a facsimile of CSS colors as a highlight.
Plug 'chrisbra/color_highlight'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'dougireton/vim-chef'
if exists('$RVM_PATH')
  Plug 'tpope/vim-rvm'
else
  Plug 'tpope/vim-rbenv'
endif

" BATS - Bash Automated Testing System
Plug 'docwhat/bats.vim'

" Groovy
Plug 'vim-scripts/groovyindent-unix'
Plug 'martinda/Jenkinsfile-vim-syntax'

" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Rust
Plug 'rust-lang/rust.vim'

" Lua
Plug 'tbastos/vim-lua'

" Display
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'nanotech/jellybeans.vim', { 'as': 'colorscheme-jellybeans' }
" Plug 'tomasr/molokai', { 'as': 'colorscheme-molokai' }
" Plug 'dracula/vim', { 'as': 'colorscheme-dracula' }
Plug 'morhetz/gruvbox', { 'as': 'colorscheme-gruvbox' }
Plug 'luochen1990/rainbow', { 'as': 'rainbow-parentheses' }

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-hclfmt'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" Sieve (RFC 5228)
Plug 'vim-scripts/sieve.vim'

call plug#end()

" vim: set foldminlines=0 foldmethod=marker :
