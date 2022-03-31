-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1, folder_arrows = 1}
vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
	unstaged = "",
	staged = "S",
	unmerged = "",
	renamed = "➜",
	deleted = "",
	untracked = "U",
	ignored = "◌"
    },
    folder = {
	default = "",
	open = "",
	empty = "",
	empty_open = "",
	symlink = ""
    }
}

local tree_cb = require"nvim-tree.config".nvim_tree_callback

require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  open_on_setup        = false,
  ignore_buffer_on_setup = false,
  ignore_ft_on_setup   = {},
  auto_close           = false,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = true,
  update_cwd           = true,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 33,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = {
	{key = "l", cb = tree_cb("edit")},
	{key = "<C-]>", cb = tree_cb("cd")},
	{key = "<C-v>", cb = tree_cb("vsplit")},
	{key = "<C-x>", cb = tree_cb("split")},
	{key = "<", cb = tree_cb("prev_sibling")},
	{key = ">", cb = tree_cb("next_sibling")},
	{key = "P", cb = tree_cb("parent_node")},
	{key = "h", cb = tree_cb("close_node")},
	{key = "<Tab>", cb = tree_cb("preview")},
	{key = "K", cb = tree_cb("first_sibling")},
	{key = "J", cb = tree_cb("last_sibling")},
	{key = "I", cb = tree_cb("toggle_ignored")},
	{key = "<C-h>", cb = tree_cb("toggle_dotfiles")},
	{key = "R", cb = tree_cb("refresh")},
	{key = "a", cb = tree_cb("create")},
	{key = "d", cb = tree_cb("remove")},
	{key = "r", cb = tree_cb("rename")},
	{key = "<C-r>", cb = tree_cb("full_rename")},
	{key = "x", cb = tree_cb("cut")},
	{key = "c", cb = tree_cb("copy")},
	{key = "p", cb = tree_cb("paste")},
	{key = "y", cb = tree_cb("copy_name")},
	{key = "Y", cb = tree_cb("copy_path")},
	{key = "gy", cb = tree_cb("copy_absolute_path")},
	{key = "[c", cb = tree_cb("prev_git_item")},
	{key = "]c", cb = tree_cb("next_git_item")},
	{key = "-", cb = tree_cb("dir_up")},
	{key = "s", cb = tree_cb("system_open")},
	{key = "q", cb = tree_cb("close")},
	{key = "?", cb = tree_cb("toggle_help")},
	{key = "<C-t>", cb = ""},
	{key = "<S-CR>", cb = ""},
	{key = "g?", cb = ""},
	{key = "<2-LeftMouse>", cb = ""},
	{key = "<2-RightMouse>", cb = ""},
	{key = "o", cb = ""},
	{key = "<CR>", cb = ""},
	{key = "<BS>", cb = ""},
	{key = "H", cb = ""},
      }
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
}
