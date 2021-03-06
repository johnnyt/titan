runtime! plugins.vim
runtime! general.vim
runtime! mappings/**/*.vim
runtime! status-line.vim

autocmd! FileType skim
autocmd  FileType skim set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
