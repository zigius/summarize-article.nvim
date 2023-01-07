local M = {}

M.setup = function(opts)
  -- code
  print(opts)
end

M.summarize_article = function(opts)
  -- if opts.tokens == nil then
  --   print("update tokens")
  -- end
  local command = "summarize_article.js summarize " .. opts.article
  local handle = io.popen(command)
  if handle == nil then
    print("Error: Could not execute summary cli")
    return
  end
  local result = handle:read("*a")
  handle:close()

  local lines = {}
  for line in string.gmatch(result, "[^\n]+") do
    lines[#lines + 1] = line
  end
  vim.fn.setreg('+', lines)
end

return M
