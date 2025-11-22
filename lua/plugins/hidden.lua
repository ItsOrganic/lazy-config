return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- show hidden files
        hide_dotfiles = false, -- don't hide files starting with .
        hide_gitignored = false, -- don't hide files from .gitignore
        hide_by_name = {},
        never_show = {},
      },
    },
  },
}
