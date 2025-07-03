# NixOS

Head to [NixOS Home](https://nixos.org/learn/) for full details

## [Install](https://nixos.org/download/#download-nix)

```
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)
```

## [nix-darwin](https://github.com/nix-darwin/nix-darwin)

### Install nix-darwin

```
sudo mkdir -p /etc/nix-darwin
sudo chown $(id -nu):$(id -ng) /etc/nix-darwin
cd /etc/nix-darwin

# To use Nixpkgs unstable:
nix flake init -t nix-darwin/master
# To use Nixpkgs 25.05:
nix flake init -t nix-darwin/nix-darwin-25.05

sed -i '' "s/simple/$(scutil --get LocalHostName)/" flake.nix
```

Open [flake.nix](nix/etc/nix-darwin/flake.nix)

- Replace 

```
    environment.systemPackages =
    [ pkgs.vim
    ];
```

with

```
      environment.systemPackages = with pkgs; [
          awscli2
          aws-vault
          kubectl
      ];
```

Add any additonal packages you may need. Find package from `nix-env -qaP` command or from https://search.nixos.org/packages

### Let nix-darwin do the job

```
sudo nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake /etc/nix-darwin 
```

## Clean up your Nix store

```
du -sh /nix/store
nix store gc
sudo nix-collect-garbage -d
```

See [check-why-store-paths-arent-being-garbage-collected](https://discourse.nixos.org/t/check-why-store-paths-arent-being-garbage-collected/38225/2) for more details

## References

- https://blog.6nok.org/how-i-use-nix-on-macos/
- https://davi.sh/blog/2024/01/nix-darwin/
- https://github.com/nix-darwin/nix-darwin/tree/master/modules/examples
- [nix-darwin Configuration Options](https://nix-darwin.github.io/nix-darwin/manual/index.html)


