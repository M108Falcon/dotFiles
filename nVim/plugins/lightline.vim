" Seperator > style and Glyphs for lightline for UNIX
let g:lightline = {
		\ 'component': {
		\   'lineinfo': ' %3l:%-2v',
		\ },
		\ 'component_function': {
    \   'filetype': 'MyFiletype',
    \   'fileformat': 'MyFileformat',
		\   'readonly': 'LightlineReadonly',
		\   'fugitive': 'LightlineFugitive'
		\ },
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' }
		\ }
	function! LightlineReadonly()
		return &readonly ? '' : ''
	endfunction
	function! LightlineFugitive()
		if exists('*FugitiveHead')
			let branch = FugitiveHead()
			return branch !=# '' ? ''.branch : ''
		endif
		return ''
	endfunction
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" Colorscheme for lightline : Possible names(instead of defualt) -> onedark, wombat, seoul256, landscape
let g:lightline.colorscheme = 'default'

" I've tried the above config on Windows but couldn't seem to get the powerline symbols correct.
" However I could get the glyphs to render correctly, so use this snippet instead in init.vim file
" by uncommenting it and pasting the snippet there
" let g:lightline = {
        "\ 'component_function': {
        "\   'filetype': 'MyFiletype',
        "\   'fileformat': 'MyFileformat',
        "\ }
        "\ }
  
  "function! MyFiletype()
    "return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  "endfunction
  
  "function! MyFileformat()
    "return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  "endfunction
