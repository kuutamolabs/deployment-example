# deployment-example
An example config for deployment of `lightning-knd`

This repository is initialized by `kld-mgr generate-config <path/to/repository>`.

The `deployment_flake` should set up with this repository, such that the node installed by `kld-mgr install` will keep auto upgrade the config with this repository.
```toml
deployment_flake = "github:kuutamolabs/deployment-example"
```

Please update to the latest version of `lightning-knd` by `nix flake update`.
Also the first time when the repository just initialized, the repository need to update before commit.
The access token is also list in the configure file of node, and only need read permission.
