{
  plugins.telescope = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>fb";
      action = ":Telescope buffers<CR>";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = ":Telescope find_files<CR>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ":Telescope live_grep<CR>";
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = ":Telescope help_tags<CR>";
    }
    {
      mode = "n";
      key = "<leader>flD";
      action = ":Telescope lsp_definitions<CR>";
    }
    {
      mode = "n";
      key = "<leader>fld";
      action = ":Telescope diagnostics<CR>";
    }
    {
      mode = "n";
      key = "<leader>fli";
      action = ":Telescope lsp_implementations<CR>";
    }
    {
      mode = "n";
      key = "<leader>flr";
      action = ":Telescope lsp_references<CR>";
    }
    {
      mode = "n";
      key = "<leader>flsb";
      action = ":Telescope lsp_document_symbols<CR>";
    }
    {
      mode = "n";
      key = "<leader>flsw";
      action = ":Telescope lsp_workspace_symbols<CR>";
    }
    {
      mode = "n";
      key = "<leader>flt";
      action = ":Telescope lsp_type_definitions<CR>";
    }
    {
      mode = "n";
      key = "<leader>fs";
      action = ":Telescope treesitter<CR>";
    }
    {
      mode = "n";
      key = "<leader>ft";
      action = ":Telescope<CR>";
    }
    {
      mode = "n";
      key = "<leader>fvb";
      action = ":Telescope git_branches<CR>";
    }
    {
      mode = "n";
      key = "<leader>fvcb";
      action = ":Telescope git_bcommits<CR>";
    }
    {
      mode = "n";
      key = "<leader>fvcw";
      action = ":Telescope git_commits<CR>";
    }
    {
      mode = "n";
      key = "<leader>fvs";
      action = ":Telescope git_status<CR>";
    }
    {
      mode = "n";
      key = "<leader>fvx";
      action = ":Telescope git_stash<CR>";
    }
  ];
}
