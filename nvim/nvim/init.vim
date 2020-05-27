runtime! plugins.vim
runtime! general.vim
runtime! mappings/**/*.vim
runtime! status-line.vim

autocmd! FileType skim
autocmd  FileType skim set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

:lua << END
  vim.cmd('packadd nvim-lsp')  -- If installed as a Vim "package".
  local nvim_lsp = require'nvim_lsp'
  local configs = require'nvim_lsp/configs'

  nvim_lsp.elixirls.setup{
    cmd = {'~/Development/elixir-ls/rel/language_server.sh'};
    settings = {
      elixirLS = {
        dialyzerEnabled = false;
      }
    }
  }
END
