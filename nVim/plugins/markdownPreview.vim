" Conifguration for Markdown preview.vim

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" specify browser to open preview page I have set my browser to chromium
" default: ''
let g:mkdp_browser = 'brave-browser'

" set to 1 to use for all filetypes 
" defualt 0 for only markdown
let g:mkdp_command_for_global = 0

" set 1 to set server preview on local network
" default value = 0 server listens to localhost (127.0.0.1)
let g:mkdp_open_to_the_world = 0

" use custom IP to preview the page.
" useful for work in remote vim but results can be viewed in local browser.
"let g:mkdp_open_ip = '<your-ip>'

" use custom port to start the markdown server
" let g:mkdp_port = '<port-number>'

" Options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'relative',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" set custom css
"let g:mkdp_markdown_css = '<path>'

" set custom highlight style
" let g:mkdp_highlight_css = '<path>'

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
