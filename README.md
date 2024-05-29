# dotfiles

## NVIM

### Fonts

- Download CaskaydiaCove Nerd Font from `https://github.com/ryanoasis/nerd-fonts`
- Read README.md and install the NF variant

### Debugging
- Install Vimspector `https://github.com/puremourning/vimspector`

## GIT
- Install Lazygit `https://github.com/jesseduffield/lazygit`
- Setup global .gitignore
    - Place .gitignore in the home directory
    - Configure git to use it `git config --global core.excludesfile ~/.gitignore`

## Logging
- Install lnav `https://lnav.org/`

## Commands

### Logging run pane to lnav
- Start piping run pane to file (change pane name) `tmux pipe-pane -o -t'dotnet run' 'cat > ~/log'`
- Run lnav `lnav log`
- Rerun the first command to stop piping
