# vim-editing

This plugin provides a collection of useful key mappings for editing in Vim.

## Features

-   Insert blank lines above or below the cursor.
-   Force blockwise visual mode for `I` and `A` commands in visual line mode.
-   Remap `Shift-U` to redo.
-   (Optional) Support for iTerm2 specific keybindings for `Ctrl+Shift` combinations.

## Installation

Use your favorite plugin manager to install.

For example, with [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'your-github-username/vim-editing'
```

### Manual Installation

Copy `editing.vim` to your Vim plugin directory (e.g., `~/.vim/plugin/`).

or

Copy `editing.vim` to `~/.vim/vimrc.d` and write `runtime! vimrc.d/editing.vim` in `~/.vimrc`

## Key Mappings

| Mode | Mapping | Description |
|---|---|---|
| Normal | `00` | Insert a blank line below the current line. |
| Normal | `0i` | Insert a blank line below the current line and enter insert mode. |
| Normal | `<S-u>` | Redo. |
| Normal | `<C-CR>` | Insert a blank line below the current line. |
| Insert | `<C-CR>` | Insert a blank line below the current line. |
| Normal | `<C-S-CR>` | Insert a blank line above the current line. |
| Insert | `<C-S-CR>` | Insert a blank line above the current line. |
| Visual | `I` | Force blockwise visual mode and insert at the beginning of the selection. |
| Visual | `A` | Force blockwise visual mode and append at the end of the selection. |

## iTerm2 Configuration (Optional)

Vim cannot distinguish `Ctrl+Shift` key presses by default. If you are using iTerm2, you can configure it to send special characters for these key combinations to make the `<C-S-CR>` mapping work.

In iTerm2 preferences (`Profiles > Keys`):
-   Map `Ctrl+Shift+Enter` to send the escape sequence `✢`.
