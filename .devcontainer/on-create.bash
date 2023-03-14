ln -sf `readlink -f .devcontainer/git/.gitignore` ~/.gitignore

mkdir -p ~/.config/nushell
ln -sf `readlink -f .devcontainer/nushell/env.nu` ~/.config/nushell/env.nu
ln -sf `readlink -f .devcontainer/nushell/config.nu` ~/.config/nushell/config.nu
