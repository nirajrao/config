" Ale Settings
let g:ale_fix_on_save = 1 " Automatically run all fixers on save
let g:ale_lint_on_text_changed = "normal" " Don't lint while still in insert mode
let g:ale_lint_delay = 350 " Wait longer before checking for syntax errors
let g:ale_linters = {
\    'typescript': ['eslint', 'prettier'],
\    'python': ['pylint'],
\}
let g:ale_fixers = {
    \'typescript': ['eslint', 'prettier'],
    \'python': ['black', 'isort'],
\}
