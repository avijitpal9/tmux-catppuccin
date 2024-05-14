show_pyenv() {
  local index icon color text module

  index=$1
  icon="$(get_tmux_option "@catppuccin_pyenv_icon" "")"
  color="$(get_tmux_option "@catppuccin_pyenv_color" "$thm_green")"
#text="$(get_tmux_option "@catppuccin_pyenv_text" "#(python --version | cut -d ' ' -f2)")"
  text="$(get_tmux_option "@catppuccin_pyenv_text" "#(pyenv version-name)")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
