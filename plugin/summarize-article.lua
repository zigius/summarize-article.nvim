-- Register the command in your plugin file
vim.api.nvim_create_user_command("SummarizeArticle", function(opts)
  require("summarize-article").summarize_article({ article = opts.fargs[1] })
end, { nargs = 1 })
-- vim.api.nvim_create_user_command("SummarizeArticle", SummarizeArticle, { nargs = 1})
