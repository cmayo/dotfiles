tml() {
  local current_dir="${PWD}"
  local pane_right pane_left

  pane_left=$(tmux display-message -p '#{pane_id}')

  tmux split-window -v -p 25 -c "$current_dir"

  tmux select-pane -t "$pane_left"
  tmux split-window -h -p 35 -c "$current_dir"

  tmux select-pane -t "$pane_left"
}
