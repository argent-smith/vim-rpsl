" Vim syntax file
" Language:		RPSL
" Maintainer:	Pavel Argentov <argentoff@gmail.com>
" URL:			https://github.com/argent-smith/vim-rpsl

if exists("b:current_syntax")
  finish
endif

" Syntactic clusters


" Syntactic matchers

syn match rpslDelim		":"

" WHOIS uses % as a comment starter
syn region rpslComment 					start="^\s*%" end="$"


" RPSL classes
syn match	rpslClass "^\s*\(mntner\|person\|role\|as-set\|route-set\|rtr-set\|aut-num\|dictionary\|route\|inetnum\)"

" Standard mappings
hi def link rpslComment	Comment
hi def link rpslDelim		Delimiter
hi def link rpslClass		Type
hi def link rpslKeyword		Keyword

