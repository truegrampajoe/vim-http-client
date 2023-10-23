if exists('b:current_syntax')
    finish
endif

syntax keyword status Status
syntax keyword httpMethod GET PUT POST DELETE OPTIONS HEAD get put post delete options head PATCH patch
syntax keyword httpHeaderKey Accept Authorization Content-Type Connection Length User Agent Location Cookie Date Content Transfer Encoding Set Vary Server X Type Options Access Control Allow Credentials
syntax match uri /http.*/
syntax match varname '$\w\+'
syntax match value "\v\".*\""
syntax match key "\v\".*\":"
syntax match comment "\v^ *#.*"

highlight link httpMethod Function
highlight link httpHeaderKey Tag
highlight link uri String
highlight link status Constant
highlight link key Label
highlight link value Number
highlight link varname Special

let b:current_syntax = 'rest'
