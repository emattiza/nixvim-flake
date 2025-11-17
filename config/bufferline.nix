{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };
  keymaps = let
    mkNormal = other: other // {mode = "n";};
  in [
    (mkNormal {
      key = "<leader>b1";
      action = "<Cmd>BufferLineGoToBuffer 1<CR>";
    })
    (mkNormal {
      key = "<leader>b2";
      action = "<Cmd>BufferLineGoToBuffer 2<CR>";
    })
    (mkNormal {
      key = "<leader>b3";
      action = "<Cmd>BufferLineGoToBuffer 3<CR>";
    })
    (mkNormal {
      key = "<leader>b4";
      action = "<Cmd>BufferLineGoToBuffer 4<CR>";
    })
    (mkNormal {
      key = "<leader>b5";
      action = "<Cmd>BufferLineGoToBuffer 5<CR>";
    })
    (mkNormal {
      key = "<leader>b6";
      action = "<Cmd>BufferLineGoToBuffer 6<CR>";
    })
    (mkNormal {
      key = "<leader>b7";
      action = "<Cmd>BufferLineGoToBuffer 7<CR>";
    })
    (mkNormal {
      key = "<leader>b8";
      action = "<Cmd>BufferLineGoToBuffer 8<CR>";
    })
    (mkNormal {
      key = "<leader>b9";
      action = "<Cmd>BufferLineGoToBuffer 9<CR>";
    })
    (mkNormal {
      key = "<leader>bc";
      action = "<Cmd>BufferLinePick<CR>";
    })
    (mkNormal {
      key = "<leader>bmn";
      action = "<Cmd>BufferLineMoveNext<CR>";
    })
    (mkNormal {
      key = "<leader>bmp";
      action = "<Cmd>BufferLineMovePrev<CR>";
    })
    (mkNormal {
      key = "<leader>bn";
      action = "<Cmd>BufferLineCycleNext<CR>";
    })
    (mkNormal {
      key = "<leader>bp";
      action = "<Cmd>BufferLineCyclePrev<CR>";
    })
    (mkNormal {
      key = "<leader>bsd";
      action = "<Cmd>BufferLineSortByDirectory<CR>";
    })
    (mkNormal {
      key = "<leader>bse";
      action = "<Cmd>BufferLineSortByExtension<CR>";
    })
  ];
}
