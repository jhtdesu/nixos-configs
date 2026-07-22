{ ... }: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Yukii";
        email = "jhtdesu@gmail.com";
      };
      init.defaultBranch = "master";
      core.editor = "nvim";
    };
  };

  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings."github.com" = {
      hostname = "github.com";
      identityFile = "~/.ssh/id_ed25519_github";
    };
  };
}
