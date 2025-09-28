# boring.aerospace

Aerospace tiling window manager configuration.

## Configuration

This configuration provides a basic setup for the Aerospace window manager with the following features:

- **Auto-start:** Aerospace is configured to start automatically at login.
- **Mouse follows focus:** The mouse cursor moves to the center of the focused monitor when switching monitors.
- **Workspace navigation:** Use `Cmd+<number>` to switch to a specific workspace and `Alt+<number>` to move a window to a workspace.
- **Window focus:** Use `Cmd+`` and `Cmd+Shift+`` to focus the next and previous windows.
- **Lock mode:** Press `Cmd+Esc` to enter "lock mode", which temporarily disables Aerospace keybindings, allowing you to use application-specific shortcuts. Press `Cmd+Esc` or `Esc` to return to the main mode.
- **Reload configuration:** Press `Alt+r` to reload the Aerospace configuration.
- **Ultrawide monitor support:** A script is included to handle single windows on ultrawide monitors. When there is only one window in a workspace, pressing `Alt+f` will make the window float and center it on the screen using the [Rectangle app](https.rectangleapp.com/). When there are multiple windows, it will switch back to tiling mode.

### Keybindings

| Keybinding | Description |
|---|---|
| `Cmd` + `1-0` | Switch to workspace 1-10 |
| `Alt` + `1-0` | Move focused window to workspace 1-10 |
| `Cmd` + ` `` | Focus next window |
| `Cmd` + `Shift` + ` `` | Focus previous window |
| `Alt` + `Tab` | Move workspace to next monitor |
| `Cmd` + `Esc` | Enter/Exit lock mode |
| `Alt` + `r` | Reload configuration |
| `Alt` + `f` | Toggle floating/tiling for single window on ultrawide |

## Installation

You can find installation instructions from [here](https://github.com/boringconfigs/#installation).
