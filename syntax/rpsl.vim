" Vim syntax file
" Language:		RPSL
" Maintainer:	Pavel Argentov <argentoff@gmail.com>
" URL:			https://github.com/argent-smith/vim-rpsl

if exists("b:current_syntax")
  finish
endif

syn match rpslComment "^\s*%.*"

hi def link rpslComment	Comment
