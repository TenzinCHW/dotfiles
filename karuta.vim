syn keyword karutaModule module skipwhite
syn keyword karutaImport import skipwhite
syn keyword karutaFunc func skipwhite
syn keyword karutaProcess process skipwhite
syn keyword karutaAlways always skipwhite
syn keyword karutaFor for skipwhite
syn keyword karutaWhile while skipwhite
syn keyword karutaSelf self skipwhite
syn keyword karutaParent parent skipwhite
syn keyword karutaShared shared skipwhite
syn keyword karutaVar var skipwhite

syn region karutaBlock  start="{" end="}" fold transparent contains=karutaSelf
