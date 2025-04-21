{
  plugins.trouble.enable = true;

  keymaps = let mkNormal = other: other // { mode = "n"; };
  in map mkNormal [
    {
      key = "<leader>xl";
      action = "<cmd>Trouble loclist<CR>";
    }
    {
      key = "<leader>xq";
      action = "<cmd>Trouble quickfix<CR>";
    }
    {
      key = "<leader>xx";
      action = "<cmd>Trouble<CR>";
    }
    {
      key = "<leader>ld";
      action = "<cmd>Trouble diagnostics<CR>";
    }
    {
      key = "<leader>lr";
      action = "<cmd>Trouble lsp_references<CR>";
    }
  ];
}
