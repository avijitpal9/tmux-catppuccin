show_tfenv() {
  local index icon color text module

  index=$1
  icon="$(get_tmux_option "@catppuccin_tfenv_icon" "󱁢")"
  color="$(get_tmux_option "@catppuccin_tfenv_color" "$thm_green")"
  text="$(get_tmux_option "@catppuccin_tfenv_text" "#(tfenv version-name)")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
