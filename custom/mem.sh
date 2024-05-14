show_mem() {
  local index icon color text module

  index=$1
  icon="$(get_tmux_option "@catppuccin_mem_icon" "󰊚")"
  color="$(get_tmux_option "@catppuccin_mem_color" "$thm_blue")"
  text="$(get_tmux_option "@catppuccin_mem_text" "#($HOME/.tmux/plugins/tmux/custom/scripts/mem_helper.py)")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
