local function bootstrap_pckr()
    local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

    if not (vim.uv or vim.loop).fs_stat(pckr_path) then
        vim.fn.system({'git', 'clone', "--filter=blob:none", 'https://github.com/lewis6991/pckr.nvim', pckr_path})
    end

    vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

-- pckr commands: https://github.com/lewis6991/pckr.nvim?tab=readme-ov-file#commands
require('pckr').add{ 
  -- lsp config taken from: https://lsp-zero.netlify.app/docs/getting-started.html#installing
  "neovim/nvim-lspconfig"; 
  "hrsh7th/nvim-cmp"; 
  "hrsh7th/cmp-nvim-lsp";

  -- colorscheme stuff
  "rose-pine/neovim"; 

  -- telescope
  "nvim-lua/plenary.nvim";
  
  -- required dependency for telescope
  "nvim-telescope/telescope.nvim";

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  };

  -- github
  "tpope/vim-fugitive";

  -- formatters
  -- npm install -g prettier
  'mhartington/formatter.nvim';
}

