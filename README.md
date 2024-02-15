## Brew

To run packages installed by brew with root privileges, (sudo). Add below to `Defaults secure_path` in `/etc/sudoers`

```sh
/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin
```

## Neovim

### Requirements

- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

- LazyVim

- For [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

  - Live grep: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - Find files: [fd](https://github.com/sharkdp/fd)

- [fzf](https://github.com/PatrickF1/fzf.fish)

- Nerd fonts

- metals (for scala). See [here](https://github.com/scalameta/nvim-metals)

  ```sh
  brew install metals
  ```

  

- a terminal that support true color and undercurl:
  - [kitty](https://github.com/kovidgoyal/kitty) ***(Linux & Macos)***
  - [wezterm](https://github.com/wez/wezterm) ***(Linux, Macos & Windows)***
  - [alacritty](https://github.com/alacritty/alacritty) ***(Linux, Macos & Windows)***
  - [iterm2](https://iterm2.com/) ***(Macos)***

> Thanks to Takuya (craftzdog)
>
> Reference [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public)

