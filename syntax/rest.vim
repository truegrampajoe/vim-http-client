if exists('b:current_syntax')
    finish
endif

syntax keyword status Status
syntax keyword httpMethod GET PUT POST DELETE OPTIONS HEAD get put post delete options head PATCH patch
syntax keyword httpHeaderKey Accept Accept-Encoding Authorization Content-Type Connection Content-Length User-Agent Location Cookie Date Content Transfer-Encoding Set Vary Server X Type Options Access Control Allow Credentials
syntax match uri /http.*/
syntax match varName '$\w\+'
syntax match value "\v\".*\""
syntax match key "\v\".*\":"
syntax match comment "\v^ *#.*" contains=varName

highlight link httpMethod Statement
highlight link httpHeaderKey Function
highlight link uri String
highlight link status Constant
highlight link key Tag
highlight link value String
highlight link varName Special

let b:current_syntax = 'rest'
