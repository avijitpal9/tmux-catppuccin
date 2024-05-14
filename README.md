# tmux-catppuccin
## catppuccin configurations for tmux

- Install tpm
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
- Add config to ~/.tmux.conf (at the end)
```
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```
- restart tmux
- add catppuccin via tpm
```
set -g @plugin 'catppuccin/tmux'
```
- set catppuccin theme
```
set -g @catppuccin_flavour 'latte' # or frappe, macchiato, mocha
```
- add tmux/cpu plugin
```
set -g @plugin 'tmux-plugins/tmux-cpu'
```
- copy the custom modules from repo to ~/.tmux/plugins/tmux/custom

- set desired modules on status-right
```
set -g @catppuccin_status_modules_right "application session tfenv pyenv jenv docker-ctx mem cpu"
```
- set status bar position & interval
```
set-option -g status-position bottom
set-option -g status-interval 10
```
- To install all ypm plugins press (ctrl+a) + I

