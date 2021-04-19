" Specify sessions dir
let g:startify_session_dir = '~/.config/nvim/sessions'

" Startify lists
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Bookmarks
let g:startify_bookmarks = [
      \ { 'a': '~/Documents/docs/tex_Samples/assignment_template.tex' },
      \ { 'c': '~/Documents/docs/tex_Samples/code_assignment_template.tex' },
      \ { 'z': '~/.zshrc' },
      \ { 'b': '~/.bash_aliases' },
      \ { 'p': '~/.p10k.zsh' },
      \ '~/.config/nvim',
      \ '~/Documents/Projects',
      \ ]

" Enable unicode
let g:startify_fortune_use_unicode = 1

" Automatically update sessions
let g:startify_session_persistence = 1

" custom header
let g:startify_custom_header = [
      \ '    _________________________________________ ',
      \ '   / It may or may not be worthwhile, but it \',
      \ '   \ still has to be done.                   /',
      \ '    ----------------------------------------- ',
      \ '    \   ^__^',
      \ '     \  (oo)\_______',
      \ '        (__)\       )\/\',
      \ '            ||----w |',
      \ '            ||     ||',
      \ ]
