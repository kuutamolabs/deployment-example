{
  inputs.lightning-knd.url = "github:kuutamolabs/lightning-knd";

  nixConfig.extra-substituters = [
    "https://cache.garnix.io"
  ];

  nixConfig.extra-trusted-public-keys = [
    "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
  ];

  outputs = inputs: import ./configurations.nix inputs;
}
