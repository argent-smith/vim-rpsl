" Vim syntax file
" Language:   RPSL
" Maintainer: Pavel Argentov <argentoff@gmail.com>
" URL:        https://github.com/argent-smith/vim-rpsl

if exists("b:current_syntax")
  finish
endif

" Syntactic matchers
syn match rpslString  /\s*.*/ contained
syn match rpslDelim   /:/ contained display
syn match rpslKeyword /^\s*[a-zA-Z-]\+:/ contains=rpslDelim contained
syn match rpslTuple   /.*/ contains=rpslKeyword,rpslString,rpslClass



" WHOIS uses % as a comment starter
syn match rpslComment /^\s*[%#].*/


" RPSL classes
syn match rpslClass   /^\s*\(mntner\|person\|role\|as-set\|route-set\|rtr-set\|aut-num\|dictionary\|route\|inetnum\):/ contained contains=rpslDelim nextgroup=rpslTitle
syn match rpslTitle   /\s*.*/ contained

" Standard mappings
hi def link rpslComment Comment
hi def link rpslClass   Type
hi def link rpslKeyword Keyword
hi def link rpslDelim   Delimiter
hi def link rpslTitle   Constant
" hi def link rpslString  String
