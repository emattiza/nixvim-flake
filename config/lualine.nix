{ lib, ... }:
{
  plugins.lualine = {
    enable = true;
    settings =
      let
        oldConfig = # lua
          ''
              {
                options = {
                   icons_enabled = true,
                   theme = "jellybeans",
                   component_separators = {"⏽","⏽"},
                   section_separators = {"",""},
                   disabled_filetypes = {},
                },
                sections = {
                  lualine_a = {'mode'},
                  lualine_b = {
                      {
                        "branch",
                        separator = '',
                      },
                      "diff",
                  },
                  lualine_c = {'filename'},
                  lualine_x = {
                    {
                      "diagnostics",
                      sources = {'nvim_lsp'},
                      separator = '',
                      symbols = {error = '', warn = '', info = '', hint = ''},
                    },
                    {
                      "filetype",
                    },
                    "fileformat",
                    "encoding",
                  },
                  lualine_y = {'progress'},
                  lualine_z = {'location'},
                },
                inactive_sections = {
                  lualine_a = {},
                  lualine_b = {},
                  lualine_c = {'filename'},
                  lualine_x = {'location'},
                  lualine_y = {},
                  lualine_z = {},
                },
                tabline = {},
                extensions = {"nvim-tree"},
            }
          '';
      in
      lib.nixvim.mkRaw oldConfig;
  };
}
