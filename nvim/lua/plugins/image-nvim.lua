return {
  {
    '3rd/image.nvim',
    event = 'VeryLazy',
    config = function()
      require('image').setup {
        backend = 'ueberzug', -- Alacritty 可使用 ueberzug 后端
        max_width = 100,
        max_height = 100,
        window_overlap_clear_enabled = true,
        window_overlap_clear_ft_ignore = { 'cmp_menu', 'cmp_docs', '' },
      }
    end,
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  }
}
