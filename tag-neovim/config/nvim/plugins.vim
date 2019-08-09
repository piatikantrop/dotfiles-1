scriptencoding utf-8

function! HasPlugin(name) abort
  return has_key(g:plugs, a:name)
endfunction

call plug#begin(stdpath('cache') . '/plugged')

" -- Utilities
Plug 'Shougo/vimproc.vim', { 'tag': 'ver.*', 'do' : 'make'}

" Support '.' correctly for plugins that support this module.
Plug 'tpope/vim-repeat'

" ds/cs/ys for deleting, changing, your surrounding chars (like ', ", etc.)
Plug 'tpope/vim-surround', { 'tag': 'v*' }

Plug 'tpope/vim-speeddating', { 'tag': 'v*' }

" Paired commands like:
"
" [<Space>                Add [count] blank lines above the cursor.
" ]<Space>                Add [count] blank lines below the cursor.
" [e                      Exchange the current line with [count] lines above it.
" ]e                      Exchange the current line with [count] lines below it.
Plug 'tpope/vim-unimpaired', { 'tag': 'v*' }

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
Plug 'mbbill/undotree', { 'tag': 'rel_*' }

" Tags support; I recommend Universal Ctags
"   https://ctags.io/
Plug 'ludovicchabant/vim-gutentags'
Plug 'liuchengxu/vista.vim' " Tagbar clone with LSP support
Plug 'aymericbeaumet/symlink.vim'

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
Plug 'scrooloose/nerdcommenter', { 'tag': '*' }

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
" " TODO: Consider fzy instead? https://github.com/jhawthorn/fzy

" Neovim Development
Plug 'tweekmonster/nvimdev.nvim'
Plug 'tweekmonster/helpful.vim'
Plug 'syngan/vim-vimlint'
Plug 'ynkdir/vim-vimlparser'
Plug 'vim-scripts/Decho', { 'tag': '*' }
Plug 'junegunn/vader.vim'

" Style/Lint
Plug 'dbakker/vim-lint'
Plug 'w0rp/ale', { 'tag': 'v*' }
Plug 'ruanyl/coverage.vim'

" Completion & Snippets
" ruby -rjson -e 'puts JSON.parse(ARGF.read)["dependencies"].keys().sort.map { |x| "      \\ #{39.chr}#{x}#{39.chr}," }' ~/.config/coc/extensions/package.json
let g:coc_global_extensions = [
      \ 'coc-ccls',
      \ 'coc-css',
      \ 'coc-dictionary',
      \ 'coc-emmet',
      \ 'coc-emoji',
      \ 'coc-eslint',
      \ 'coc-html',
      \ 'coc-java',
      \ 'coc-jest',
      \ 'coc-json',
      \ 'coc-lists',
      \ 'coc-omni',
      \ 'coc-prettier',
      \ 'coc-pyls',
      \ 'coc-rls',
      \ 'coc-snippets',
      \ 'coc-solargraph',
      \ 'coc-svg',
      \ 'coc-tag',
      \ 'coc-tslint',
      \ 'coc-tsserver',
      \ 'coc-vimlsp',
      \ 'coc-yaml',
      \ ]

" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'Shougo/neoyank.vim'
Plug 'honza/vim-snippets'
Plug 'cohama/lexima.vim'

" NGinX
Plug 'chr4/nginx.vim'

" Javascript & JSON
Plug 'google/vim-jsonnet'
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty', { 'tag': 'v*' }
Plug 'HerringtonDarkholme/yats.vim' " TypeScript Syntax

" GraphQL Schemas
Plug 'jparise/vim-graphql'

" XML, HTML & CSS
Plug 'othree/html5.vim'
" TODO: Use polyglot instead? It's a curated list of languages, syntaxes, and indentations.
" Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-ragtag'

" Show colors in the text as reference.
Plug 'RRethy/vim-hexokinase'

" Highlight the word under the cursor.
Plug 'RRethy/vim-illuminate'

" Ruby
Plug 'vim-ruby/vim-ruby', { 'tag': 'stable-*' }
Plug 'tpope/vim-rails', { 'tag': 'v*' }
Plug 'tpope/vim-bundler', { 'tag': 'v*' }
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
Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoInstallBinaries' }

" Rust
Plug 'rust-lang/rust.vim'

" Lua
Plug 'tbastos/vim-lua'

" Display
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline', { 'tag': 'v*' }
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

" Pretty icons
Plug 'ryanoasis/vim-devicons'

" Diff changes between buffer and saved
Plug 'plytophogy/vim-diffchanges'

call plug#end()

" vim: set foldminlines=0 foldmethod=marker :
