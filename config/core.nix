{
  viAlias = false;
  vimAlias = true;
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 4;
    tabstop = 4;
    softtabstop = 4;
    expandtab = true;
    cmdheight = 1;
    updatetime = 300;
    tm = 500;
    hidden = true;
    splitbelow = true;
    splitright = true;
    autoindent = true;
  };
  clipboard.register = "unnamedplus";
  autoCmd = [
    {
      event = "FileType";
      pattern = "nix";
      command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2";
    }
  ];
}
