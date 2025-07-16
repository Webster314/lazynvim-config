return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    init = function()
        vim.opt.termguicolors = true
    end,
    config = function ()
        require("bufferline").setup{}
    end
}

