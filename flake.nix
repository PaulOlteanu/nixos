{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    # nixos-cosmic = {
    #   url = "github:lilyinstarlight/nixos-cosmic";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = {
    self,
    nixpkgs,
    # nixos-cosmic,
    ...
  }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # {
        #   nix.settings = {
        #     substituters = ["https://cosmic.cachix.org/"];
        #     trusted-public-keys = ["cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE="];
        #   };
        # }
        # nixos-cosmic.nixosModules.default
        ./configuration.nix
      ];
    };
  };
}
