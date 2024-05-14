show_jenv() {
  local index icon color text module

  index=$1
  icon="$(get_tmux_option "@catppuccin_jenv_icon" "")"
  color="$(get_tmux_option "@catppuccin_jenv_color" "$thm_green")"
  text="$(get_tmux_option "@catppuccin_jenv_text" "#(jenv version-name)")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
