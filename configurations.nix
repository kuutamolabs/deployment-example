{ lightning-knd, ... }: {
  nixosConfigurations."kld-00" = lightning-knd.inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [
      lightning-knd.nixosModules."kld-node"
      { kuutamo.deployConfig = builtins.fromTOML (builtins.readFile (builtins.path { name = "node.toml"; path = ./kld-00.toml; })); }
    ];
  };
}
