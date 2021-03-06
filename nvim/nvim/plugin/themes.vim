" Theme stuff
" Dynamically switch color scheme and have things respect it
function SwitchColorScheme(name)
  let g:VIM_COLOR_SCHEME = a:name
  call ColorScheme()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function! ColorScheme()
  if g:VIM_COLOR_SCHEME ==# 'embark-solarized'
    colorscheme embark_solarized
    let g:lightline.colorscheme = 'embark_solarized'
    hi link Sneak Search
  endif

    if g:VIM_COLOR_SCHEME ==# 'tomorrow-night-blue'
    packadd colorsbox
    " let g:colorsbox_contrast_dark = 'hard'
    let g:colorsbox_italic = 1
    let g:colorsbox_bold = 0
    let g:colorsbox_inverse = 0
    colorscheme colorsbox-stblue
    let g:lightline.colorscheme = 'blue'
    hi link Sneak Search
    hi VertSplit guibg=#002451 guifg=#a0c1eb
    hi SignColumn guibg=#002451
    hi GitGutterAdd guibg=#002451
    hi GitGutterChange guibg=#002451
    hi GitGutterDelete guibg=#002451
    hi CursorLineNr guifg=#d1f1a9
    hi DiffAdd guibg=#d1f1a9 guifg=#002451
    hi DiffDelete guibg=#ff9da4 guifg=#002451
    hi DiffChange guibg=#ffeead guifg=#002451
    hi DiffText guibg=#ffeead guifg=#002451 gui=bold
  endif

  if g:VIM_COLOR_SCHEME ==# 'gruvbox-light'
    packadd gruvbox-material
    set background=light
    let g:gruvbox_material_background = 'hard'
    let g:gruvbox_material_transparent_background = 1
    colorscheme gruvbox-material
    let g:lightline.colorscheme = 'gruvbox_material'
    let g:clap_theme = 'gruvbox_light'
    hi link Sneak Search
    " hi Normal guibg=#FDF6E3
    " hi EndOfBuffer guibg=#FDF6E3
    hi CursorLine guibg=#FAF2CF
    hi PMenu guibg=#FAF2CF
    hi ClapFile guifg=#654735
    hi Visual guibg=#d9e1cc
    execute "silent ! kitty @ --to=tcp:localhost:12345 set-colors --all ~/.config/kitty/gruvbox-light.conf"
    execute "silent ! tmux source-file ~/titan/tmux/gruvbox-light.tmux"
  endif

  if g:VIM_COLOR_SCHEME ==# 'embark'
    colorscheme embark
    let g:embark_terminal_italics = 1
    hi Cursor guibg=#F48FB1 guifg=white
    let g:lightline.colorscheme = 'embark'
    let g:clap_theme = 'embark'
    " hi CtrlPMatch guifg=#F48FB1 guibg=#1e1c31
    hi CtrlPMode1 guibg=#aaffe4 guifg=black
    hi Normal guibg=NONE ctermbg=NONE
    hi LineNr guibg=NONE ctermbg=NONE
    hi link Sneak Search
    hi link ClapMatches Search

    execute "silent ! kitty @ --to=tcp:localhost:12345 set-colors --all ~/.config/kitty/ryze.conf"
    execute "silent ! tmux source-file ~/titan/tmux/embark.tmux"
  endif

  if g:VIM_COLOR_SCHEME ==# 'nord'
    " Lazy load theme in
    packadd nord
    let g:nord_underline = 1
    let g:nord_italic_comments = 1
    let g:nord_italic = 1
    let g:nord_cursor_line_number_background = 1
    colorscheme nord
    let g:lightline.colorscheme = 'nord'
  endif

endfunction

" The Defaults
:call SwitchColorScheme($THEME)
