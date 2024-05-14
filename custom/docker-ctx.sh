show_docker-ctx() {
  local index icon color text module

  index=$1
  icon="$(get_tmux_option "@catppuccin_docker-ctx_icon" "")"
  color="$(get_tmux_option "@catppuccin_docker-ctx_color" "$thm_green")"
  text="$(get_tmux_option "@catppuccin_docker-ctx_text" "#(docker context show)")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
