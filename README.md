# vim-editing

This plugin provides a collection of useful key mappings for editing in Vim.

## Features

-   Insert blank lines above or below the cursor.
-   Force blockwise visual mode for `I` and `A` commands in visual line mode.
-   Remap `Shift-U` to redo.


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
| Normal | `88` | Insert a blank line above the current line. |
| Normal | `99` | Insert a blank line below the current line. |
| Normal | `9i` | Insert a blank line below the current block and enter insert mode. |
| Normal | `8i` | Insert a blank line above the current block and enter insert mode. |
| Visual | `I` | Force blockwise visual mode and insert at the beginning of the selection. |
| Visual | `A` | Force blockwise visual mode and append at the end of the selection. |

