#!/bin/bash

WINDOW_COUNT=$(aerospace list-windows --workspace focused --count) 
MONITOR=$(aerospace list-monitors --focused --format "%{monitor-name}") 

# Toggle layout for each window in focused workspace.
reset-workspace-to-tiling() {
  for window in $(aerospace list-windows --workspace focused --format "%{window-id}"); do
    aerospace layout --window-id $window tiling
  done
}

# If using ultrawide display and there is only one window, 
# make the single window float and set it to have sensible width
if [[ "$WINDOW_COUNT" -eq 1 ]]; then
  aerospace layout floating tiling
  open -g "rectangle://execute-action?name=center-half"
else
  reset-workspace-to-tiling
fi
