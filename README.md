# Terminal configuration

## NVIM 

### Fonts

- Download CaskaydiaMono Nerd Font from `https://github.com/ryanoasis/nerd-fonts`
- Read README.md and install the NF variant

## TMUX

### Fix color scheme in NVIM

```
# file ~/.tmux.conf
# ...

set -g default-terminal "xterm-256color"

# make colors inside tmux look the same as outside of tmux
# see https://github.com/tmux/tmux/issues/696
# see https://stackoverflow.com/a/41786092
set-option -ga terminal-overrides ",xterm-256color:Tc"

# ...
```
