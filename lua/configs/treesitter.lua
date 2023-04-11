require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = "all",
  ignore_install = {"smali"},
  highlights = {
    enable = true,
    -- disable slow treesitter highlights for large files
    disable = function (lang, buf)
      local max_filesize = 100 * 1024 -- 100KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end
  }
}
