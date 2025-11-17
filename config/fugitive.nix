{
  plugins.fugitive.enable = true;
  keymaps = let
    mkNormal = other: other // {mode = "n";};
  in [
    (mkNormal {
      key = "<leader>go";
      action = "<Cmd>Git<CR>";
    })
  ];
}
