" line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

  " Force your ~/.vim/after directory to be last in &rtp always:
  " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'

  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  let addons=[]
  call add(addons, 'github:tpope/vim-sensible')
  call add(addons, 'github:tpope/vim-fugitive')
  call add(addons, 'github:tpope/vim-git')
  call add(addons, 'github:tpope/vim-scriptease')
  call add(addons, 'github:tpope/vim-endwise')
  call add(addons, 'github:tpope/vim-sleuth')
  call add(addons, 'github:tpope/vim-speeddating')
  call add(addons, 'github:tpope/vim-repeat')
  call add(addons, 'github:tpope/vim-unimpaired')
  call add(addons, 'github:tpope/vim-abolish')
  "call add(addons, 'github:tpope/vim-capslock')
  call add(addons, 'github:tpope/vim-eunuch')
  call add(addons, 'github:tpope/vim-classpath')
  call add(addons, 'github:tpope/vim-surround')
  call add(addons, 'github:sjl/gundo.vim')
  call add(addons, 'github:kien/ctrlp.vim')
  call add(addons, 'github:kchmck/vim-coffee-script')
  call add(addons, 'github:scrooloose/nerdtree')
  call add(addons, 'github:csexton/snipmate.vim')

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons(addons, {})
endfun
call SetupVAM()

colorscheme delek

set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set smartindent
set hlsearch
set autoread
set autoindent
set paste

nnoremap <silent> <CR> :nohlsearch<CR>
autocmd BufNewFile,BufRead *.scss             set ft=scss.css

