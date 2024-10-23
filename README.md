# Simple env configuration

* .spacemacs config file requires spacemacs package:

```
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

* 001-banner.txt goes to ~/.emacs.d/core/banners/

* emacs will need some lsp servers and formatters:

```
pip install python-lsp-server[all]
apt install clangd clang-format npm gopls
npm -g install eslint prettier eslint-cli volar

mkdir -p ~/.local/bin
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer
```

* terminal configuration - `alacritty`: .alacritty.yml should go to ~/

* tmux configuration should go to ~/

* additional .zshrc config for oh-my-zsh usage

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* oh-my-zsh-custom content goes to ~/.oh-my-zsh/custom

* .zshrc and .p10k.zsh goes to ~/

* thunderbird with self@j3x.dev conf
