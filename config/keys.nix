{
  globals.mapleader = " ";
  globals.maplocalleader = ",";
  plugins.which-key = { enable = true; };
  keymaps = let mkNormal = other: other // { mode = "n"; };
  in [
    (mkNormal {
      key = "<leader>to";
      action = ":NvimTreeOpen<CR>";
      options.desc = "Open Nvim Tree";
    })
    (mkNormal {
      key = "<leader>tc";
      action = ":NvimTreeClose<CR>";
      options.desc = "Close Nvim Tree";
    })
    (mkNormal {
      key = "<leader>tt";
      action = ":NvimTreeToggle<CR>";
      options.desc = "Toggle Nvim Tree";
    })
    (mkNormal {
      key = "[e";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options.desc = "Jump to next diagnostic";
    })
  ];
}
