# dotfiles

## NEOVIM

### Install
- Install [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)

### Fonts
- Download CaskaydiaCove Nerd Font [here](https://github.com/ryanoasis/nerd-fonts)
- Read README.md and install the NF variant

### Config
- Copy nvim config to `.config/nvim`

### Debugging
- Install [vimspector](https://github.com/puremourning/vimspector)
- Fix for `Vimspector unavailable: Requires Vim compiled with +python3` [here](https://stackoverflow.com/questions/74036547/neovim-vimspector-unavailable-requires-vim-compiled-with-python3)

### Plugin Dependencies
- [telescope](https://github.com/nvim-telescope/telescope.nvim) requires [ripgrep](https://github.com/BurntSushi/ripgrep)
- Json language server requires [node](https://github.com/nvm-sh/nvm)
- C# language server requires [dotnet](https://learn.microsoft.com/en-us/dotnet/core/install/linux)

## TMUX
- Install [tmux](https://github.com/tmux/tmux/wiki/Installing)
- Place `tmux.conf` in the home directory
- Install plugins by pressing `Ctrl+B I`. More info [here](https://github.com/tmux-plugins/tpm).

## GIT
- Install [lazygit](https://github.com/jesseduffield/lazygit)
- Setup global .gitignore
    - Place `.gitignore` in the home directory
    - Configure git to use it `git config --global core.excludesfile ~/.gitignore`

## Logging
- Install lnav `https://lnav.org/`

## Commands

### Logging run pane to lnav
- Start piping run pane to file (change pane name) `tmux pipe-pane -o -t'dotnet run' 'cat > ~/log'`
- Run lnav `lnav log`
- Rerun the first command to stop piping
