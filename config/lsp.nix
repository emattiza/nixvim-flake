{ lib, pkgs, ... }: {
  plugins = {
    efmls-configs = {
      enable = true;
      setup = {
        bash = { linter = "shellcheck"; };
        sh = { linter = "shellcheck"; };
        nix = { formatter = "nixfmt"; };
        python = {
          formatter = [ "ruff" ];
          linter = "ruff";
        };
      };
    };
    lsp-format = { enable = true; };
    lspsaga = {
      enable = true;
      settings.lightbulb.sign = false;
    };
    lsp = {
      enable = true;
      servers = {
        basedpyright.enable = true;
        html.enable = true;
        bashls.enable = true;
        rust_analyzer = { enable = true; installRustc = false; installCargo = false; };
        purescriptls = {
          enable = true;
          package = null;
        };
        elmls.enable = true;
        denols.enable = true;
        efm = {
          extraOptions = { init_options = { documentFormatting = true; }; };
          filetypes = [ "python" "sh" "nix" "bash" "python" ];
          onAttach.function = # lua
            ''
              require("lsp-format").on_attach(client, bufnr)
            '';
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
      };
    };
  };
  keymaps = let mkNormal = other: other // { mode = "n"; };
  in [
    (mkNormal {
      key = "<leader>ca";
      action = "<cmd>Lspsaga code_action<CR>";
    })
    (mkNormal {
      key = "<leader>lc";
      action = "<cmd>Lspsaga show_cursor_diagnostics<CR>";
    })
    (mkNormal {
      key = "<leader>ld";
      action = "<cmd>Lspsaga peek_definition<CR>";
    })
    (mkNormal {
      key = "<leader>lf";
      action = "<cmd>Lspsaga finder<CR>";
    })
    (mkNormal {
      key = "<leader>lh";
      action = "<cmd>Lspsaga hover_doc<CR>";
    })
    (mkNormal {
      key = "<leader>ll";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
    })
    (mkNormal {
      key = "<leader>ln";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
    })
    (mkNormal {
      key = "<leader>lp";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
    })
    (mkNormal {
      key = "<leader>lr";
      action = "<cmd>Lspsaga rename<CR>";
    })
  ];

}
