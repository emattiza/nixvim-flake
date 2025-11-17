{lib, ...}: {
  plugins.flash.enable = true;
  keymaps = let
    inherit (lib.nixvim) mkRaw;
  in [
    {
      key = "<leader>ss";
      mode = ["n" "x" "o"];
      action = mkRaw ''function() require("flash").jump() end'';
      options.desc = "Flash";
    }
    {
      key = "<leader>sS";
      mode = ["n" "x" "o"];
      action = mkRaw ''function() require("flash").treesitter() end'';
      options.desc = "Flash Treesitter";
    }
    {
      key = "<leader>sr";
      mode = ["o"];
      action = mkRaw ''function() require("flash").remote() end'';
      options.desc = "Remote Flash";
    }
    {
      key = "<leader>sR";
      mode = ["o" "x"];
      action = mkRaw ''function() require("flash").treesitter_search() end'';
      options.desc = "Treesitter Search";
    }
    {
      key = "<leader>st";
      mode = ["c"];
      action = mkRaw ''function() require("flash").toggle() end'';
      options.desc = "Toggle Flash Search";
    }
  ];
}
