
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Jul 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set ic is hls
set nu
"set t_Co=256
colorscheme molokai 

set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=0
set title
set showmatch
set smartindent

set ignorecase
set smartcase
set wrapscan

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrc
	autocmd FileType markdown call <SID>markdown_settings()
	function! s:markdown_settings()
		setlocal tabstop=4 shiftwidth=4 softtabstop=4

		" previm
		"let g:previm_open_cmd = 'open -a Opera'
		"let g:previm_open_cmd = 'open -a Firefox'
		"let g:previm_open_cmd = 'open -a Safari'
		let g:previm_open_cmd = 'open -a GoogleChromeDev'
		nnoremap <buffer> <Space>o :<C-u>PrevimOpen<CR>
		map <C-j> <Plug>(previm-scroll-down)
		map <C-k> <Plug>(previm-scroll-up)
	endfunction
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif



"vundle設定（プラグイン一括管理）
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"：BundleCleanコマンドで消されないための対策。
Bundle 'vundle'
Bundle 'emmet-vim'
Bundle 'surround.vim'
Bundle 'unite.vim'
Bundle 'highlightline.vim'
Bundle 'open-browser.vim'
Bundle 'previm'

augroup Vimrc
	autocmd FileType markdown call <SID>markdown_settings()
	function! s:markdown_settings()
		setlocal tabstop=4 shiftwidth=4 softtabstop=4

		" previm
		"let g:previm_open_cmd = 'open -a Opera'
		"let g:previm_open_cmd = 'open -a Firefox'
		"let g:previm_open_cmd = 'open -a Safari'
		let g:previm_open_cmd = ''
		nnoremap <buffer> <Space>o :<C-u>PrevimOpen<CR>
		map <C-j> <Plug>(previm-scroll-down)
		map <C-k> <Plug>(previm-scroll-up)
	endfunction
augroup END


" for open-browser plugin
 let g:netrw_nogx = 1 " disable netrw's gx mapping.
 nmap gx <Plug>(openbrowser-smart-search)
 vmap gx <Plug>(openbrowser-smart-search)

 " md as markdown, instead of modula2
 autocmd Vimrc BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
