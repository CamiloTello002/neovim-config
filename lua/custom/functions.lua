local M = {}

M.close_all_except_current = function ()
  local current_bufnr = vim.api.nvim_get_current_buf()
  for _, bufnr in ipairs(vim.t.bufs) do
    if bufnr ~= current_bufnr then
      require("nvchad.tabufline").close_buffer(bufnr)
    end
  end
end

return M


