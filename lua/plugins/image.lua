return {
  src = 'https://github.com/3rd/image.nvim',
  data = {
    setup = function()
      require('image').setup {
        backend = 'kitty',
        -- avoids a luarocks/magick-rock toolchain; shells out to the `magick` CLI instead
        processor = 'magick_cli',
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
            only_render_image_at_cursor = false,
            filetypes = { 'markdown', 'vimwiki' },
          },
        },
        max_width_window_percentage = nil,
        max_height_window_percentage = 50,
        window_overlap_clear_enabled = false,
        window_overlap_clear_ft_ignore = { 'cmp_menu', 'cmp_docs', '' },
      }
    end,
  },
}
