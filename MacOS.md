# MacOS Setup

## NixOS

Many of the tools are installed by [nix](./nix).
Although `nix` can install graphical applications such as iTerm2 it is highly recommended to stick to standard ways of installing them. When installed by `nix` they appear in Launchpad, however cannot be found by Spotlight

## Applications

- Firefox
- iTerm2
- MacPass
- Moped
- VSCode
- LibreOffice
- Xcode (via App Store)

- [Homebrew](https://brew.sh/)

## Settings

### iTerm2

- Disable the bell sound: 
`iTerm2 -> Preferences -> Profiles`
Under `Terminal` tab, you will see `Notifications` header. Check the `Silence` bell option.

- Change font colour to wheat
`iTerm2 -> Preferences -> Profiles`
Under `Colors` tab, you will see `Basic Colors` header. Change the `Foreground` color HEX code to `f5deb3`.

- Moving Faster
  - [how-to-set-keyboard-shortcuts-to-jump-to-beginning-end-of-line](https://stackoverflow.com/questions/6205157/how-to-set-keyboard-shortcuts-to-jump-to-beginning-end-of-line)

    - Open Preferences
    - Click "Profile" tab
    - Select a profile in the list on the left (eg "Default")
    - Click "Keys" tab
    - Click "Key Bindings" tab (if it exists)
    - Click the "Presets" dropdown and select "Natural Text Editing"


### Bash

- [Upgrading Bash on macOS](https://itnext.io/upgrading-bash-on-macos-7138bd1066ba)
- `brew install bash-completion`

### Git

- `brew install git`

### VSCode

- [Launching from the command line](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
- [How to Always Open Files in a New Tab](https://vscode.one/new-tab-vscode/)

#### VSCode Extentions

- GitLens
- Makefile Tools
- HashiCorp Terraform
- Google Cloud Code
- Better Align
- tfsec

### terraform

- [terraform appropriate package](https://www.terraform.io/downloads)
- `terraform -install-autocomplete`

### tfsec

- [use brew](https://github.com/aquasecurity/tfsec)

```
brew install tfsec
```

###  aws CLI 

- [Installing or updating the latest version of the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [aws cli command completion](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html)
- [AWS Vault](https://github.com/99designs/aws-vault)
- [AWS Copilot](https://aws.amazon.com/blogs/containers/introducing-aws-copilot/)
- [eksctl](https://github.com/weaveworks/eksctl/tree/main)
```
ARCH=arm64
PLATFORM=$(uname -s)_$ARCH
curl -sLO "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz
sudo mv /tmp/eksctl /usr/local/bin
```

###  gcloud CLI 

- [Install the gcloud CLI](https://cloud.google.com/sdk/docs/install)
- [gcloud CLI cheat sheet](https://cloud.google.com/sdk/docs/cheatsheet)
- bash completion: see [.bash_extra](./.bash_extra)

### Azure cli

- [Install Azure CLI](https://docs.microsoft.com/en-au/cli/azure/install-azure-cli-macos)
- bash completion: 

```
brew list az
....
/opt/homebrew/Cellar/azure-cli/2.39.0/etc/bash_completion.d/az
....
```

### kubectl

- [Install Kubectl and Kustomize](https://kubectl.docs.kubernetes.io/installation/)
- bash completion: see [.bash_extra](./.bash_extra)

### kubectl krew plugin

- [Install krew](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)

### k9s

- [k9scli.io](https://k9scli.io/)

### helm

- [Installing Helm](https://helm.sh/docs/intro/install/)
- [Helm Completion Bash](https://helm.sh/docs/helm/helm_completion_bash/)

### kind

- [kind](https://kind.sigs.k8s.io/) is a tool for running local Kubernetes clusters using Docker container “nodes”
- Bash completion is installed automatically 

### docker without docker desktop

Rancher Desktop (RD) replaces Docker Desktop - see first link below for instructions.

**Notes** 

- RD installs cli tools under `~/.rd/bin/`
- RD docker daemon socket is also under `~/.rd/bin/` with `/var/run/docker.sock` as a symlink to it

See:

- [Install Docker on Mac M1 without Docker Desktop](https://dev.to/sergej_brazdeikis/install-docker-on-mac-m1-without-docker-desktop-k6o)
- [Run Docker without Docker Desktop on macOS](https://dhwaneetbhatt.com/blog/run-docker-without-docker-desktop-on-macos)

Installation:

- `brew install docker docker-compose docker-credential-helper`
- Follow screen instructions about docker-compose
- Bash completion is installed automatically 

### Various utilities

#### jq
 - `brew install jq`

#### 7zip

https://apple.stackexchange.com/questions/343488/how-to-open-password-protected-7zip-archive-on-osx

- `brew install p7zip`
