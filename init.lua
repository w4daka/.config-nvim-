vim.api.nvim_create_user_command(
	'InitLua',
    	function()
        	vim.cmd.edit(vim.fn.stdpath('config') .. '/init.lua')
    end,
    {desc ='Open init.lua'}
)
-- share clipboard with OS
vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = true,  -- これが重要
}

vim.opt.clipboard = 'unnamedplus'

