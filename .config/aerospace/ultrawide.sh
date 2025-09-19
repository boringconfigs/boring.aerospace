#!/bin/bash

WINDOW_COUNT=$(aerospace list-windows --workspace focused --count) 
MONITOR=$(aerospace list-monitors --focused --format "%{monitor-name}") 

# Toggle layout for each window in focused workspace.
toggle-workspace-layout() {
  local layout=$1
  for window in $(aerospace list-windows --workspace focused --format "%{window-id}"); do
    aerospace layout --window-id $window "$layout"
  done
}

# If using ultrawide display and there is only one window, 
# make the single window float and set it to have sensible width
if [[ "$MONITOR" == "T34w-30" ]]; then
  if [[ "$WINDOW_COUNT" -eq 1 ]]; then
    toggle-workspace-layout floating
    open -g "rectangle://execute-action?name=center-half"
  else
    toggle-workspace-layout tiling
  fi
fi
