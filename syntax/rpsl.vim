" Vim syntax file
" Language:		RPSL
" Maintainer:	Pavel Argentov <argentoff@gmail.com>
" URL:			https://github.com/argent-smith/vim-rpsl

if exists("b:current_syntax")
  finish
endif

" Syntactic matchers
syn match rpslDelim ":" contained display
syn match rpslKeyword "^\s*[a-zA-Z-]\+:" contains=rpslDelim display

" WHOIS uses % as a comment starter
syn region rpslComment 					start="^\s*%" end="$" display


" RPSL classes
syn match	rpslClass "^\s*\(mntner\|person\|role\|as-set\|route-set\|rtr-set\|aut-num\|dictionary\|route\|inetnum\):" contains=rpslDelim display

" Standard mappings
hi def link rpslComment	Comment
hi def link rpslClass		Type
hi def link rpslKeyword		Keyword
hi def link rpslDelim		Delimiter

