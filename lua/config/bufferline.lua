require("bufferline").setup {
  options = {
    offsets = {
      { filetype = "NvimTree", text = " explorer", padding = 0, text_align = "left" },
      { filetype = "neo-tree", text = "", padding = 1 },
      { filetype = "Outline", text = "", padding = 1 },
    },
    buffer_close_icon = "",
    modified_icon = "",
    -- 
    close_icon = "",
    close_command = function(bufnum)
      print(bufnum)
    end,
    show_close_icon = false,
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    show_tab_indicators = false,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = false,
    indicator_icon = " ",
    separator_style = "thin",
    always_show_bufferline = true,
    diagnostics = false,
  },
  highlights = {
    -- Buffers
    buffer_selected = {
      gui = "NONE",
    },
    duplicate = {
      gui = "NONE",
    },
    duplicate_selected = {
      gui = "NONE",
    },
    pick = {
      gui = "NONE",
    },
    pick_selected = {
      gui = "NONE",
    },
  }
}
