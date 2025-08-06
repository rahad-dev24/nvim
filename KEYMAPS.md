# Neovim Keymaps Reference

This document contains all custom keymaps defined in this Neovim configuration, organized by category for easy reference.

## Leader Key
The leader key is set to `<Space>` (spacebar).

---

## Core Keymaps
*Defined in: `lua/core/keymaps.lua`*

### General
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<Esc>` | Normal | `<cmd>nohlsearch<CR>` | Clear search highlighting |
| `<C-s>` | Insert, Normal, Visual | `<cmd>:w<CR><Esc>` | Save file |
| `<leader>q` | Normal | `vim.diagnostic.setloclist` | Open diagnostic quickfix list |
| `<Esc><Esc>` | Terminal | `<C-\><C-n>` | Exit terminal mode |

### Window Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-h>` | Normal | `<C-w><C-h>` | Move focus to left window |
| `<C-l>` | Normal | `<C-w><C-l>` | Move focus to right window |
| `<C-j>` | Normal | `<C-w><C-j>` | Move focus to lower window |
| `<C-k>` | Normal | `<C-w><C-k>` | Move focus to upper window |

### Buffer Management
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-x>` | Normal | `<cmd>:bd<CR>` | Delete current buffer |
| `<C-q>` | Normal | `<cmd>:qall<CR>` | Close Neovim |

### Folding
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `zR` | Normal | Open all folds | Unfold everything |
| `zM` | Normal | Close all folds | Fold everything |
| `za` | Normal | Toggle fold | Toggle fold under cursor |
| `zc` | Normal | Close fold | Close fold under cursor |
| `zo` | Normal | Open fold | Open fold under cursor |
| `]z` | Normal | Next fold | Jump to next fold |
| `[z` | Normal | Previous fold | Jump to previous fold |

### BufferLine Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<S-h>` | Normal | `<cmd>BufferLineCyclePrev<CR>` | Previous buffer |
| `<S-l>` | Normal | `<cmd>BufferLineCycleNext<CR>` | Next buffer |
| `<leader>bp` | Normal | `<cmd>BufferLineTogglePin<CR>` | Toggle pin buffer |
| `<leader>bP` | Normal | `<cmd>BufferLineGroupClose ungrouped<CR>` | Delete non-pinned buffers |
| `<leader>bo` | Normal | `<cmd>BufferLineCloseOthers<CR>` | Delete other buffers |
| `<leader>br` | Normal | `<cmd>BufferLineCloseRight<CR>` | Delete buffers to the right |
| `<leader>bl` | Normal | `<cmd>BufferLineCloseLeft<CR>` | Delete buffers to the left |

---

## Spectre (Search & Replace)
*Defined in: `lua/plugins/spectre.lua`*

### Global Search & Replace
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>Sr` | Normal | Open Spectre | Replace in files (Spectre) |
| `<leader>Sw` | Normal | Search current word | Search current word (Spectre) |
| `<leader>Sw` | Visual | Search selection | Search current selection (Spectre) |
| `<leader>Sf` | Normal | Search in file | Search on current file (Spectre) |

### Within Spectre Interface
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `dd` | Normal | Toggle item | Toggle search result item |
| `<CR>` | Normal | Enter file | Open file at match location |
| `<leader>q` | Normal | Send to quickfix | Send all items to quickfix list |
| `<leader>c` | Normal | Replace command | Input replace command |
| `<leader>o` | Normal | Show options | Show search/replace options |
| `<leader>rc` | Normal | Replace current | Replace current line |
| `<leader>R` | Normal | Replace all | Replace all matches |
| `<leader>v` | Normal | Change view | Change result view mode |
| `<leader>l` | Normal | Resume search | Repeat last search |
| `trs` | Normal | Use sed | Use sed engine for replace |
| `tro` | Normal | Use oxi | Use oxi engine for replace |
| `tu` | Normal | Toggle live update | Update when vim writes to file |
| `ti` | Normal | Toggle ignore case | Toggle ignore case option |
| `th` | Normal | Toggle hidden | Toggle search hidden files |

---

## Telescope (Fuzzy Finder)
*Defined in: `lua/plugins/telescope.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>sh` | Normal | Search help tags | Find help documentation |
| `<leader>sk` | Normal | Search keymaps | Find keymaps |
| `<leader>sf` | Normal | Search files | Find files in project |
| `<leader>ss` | Normal | Search select telescope | Telescope picker |
| `<leader>sw` | Normal | Search current word | Search word under cursor |
| `<leader>sg` | Normal | Search by live grep | Live grep search |
| `<leader>sd` | Normal | Search diagnostics | Find diagnostics |
| `<leader>sr` | Normal | Search resume | Resume last search |
| `<leader>s.` | Normal | Search recent files | Find recent files |
| `<leader><leader>` | Normal | Find existing buffers | Buffer picker |
| `<leader>/` | Normal | Fuzzily search in current buffer | Search current buffer |
| `<leader>s/` | Normal | Search in open files | Search across open files |
| `<leader>sn` | Normal | Search neovim files | Search Neovim config files |
| `<leader>sm` | Normal | Search harpoon marks | Search Harpoon marks |

---

## Harpoon (File Navigation)
*Defined in: `lua/plugins/harpoon.lua`*

### Main Operations
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>a` | Normal | Add file | Add current file to Harpoon |
| `<leader>u` | Normal | Remove file | Remove current file from Harpoon |
| `<leader>c` | Normal | Clear all | Clear all Harpoon files |
| `<leader>h` | Normal | Toggle menu | Toggle Harpoon menu |

### Quick Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>1` | Normal | Jump to file 1 | Navigate to Harpoon file 1 |
| `<leader>2` | Normal | Jump to file 2 | Navigate to Harpoon file 2 |
| `<leader>3` | Normal | Jump to file 3 | Navigate to Harpoon file 3 |
| `<leader>4` | Normal | Jump to file 4 | Navigate to Harpoon file 4 |
| `<leader>5` | Normal | Jump to file 5 | Navigate to Harpoon file 5 |
| `<leader>6` | Normal | Jump to file 6 | Navigate to Harpoon file 6 |
| `<leader>7` | Normal | Jump to file 7 | Navigate to Harpoon file 7 |
| `<leader>8` | Normal | Jump to file 8 | Navigate to Harpoon file 8 |
| `<leader>9` | Normal | Jump to file 9 | Navigate to Harpoon file 9 |
| `<leader>10` | Normal | Jump to file 10 | Navigate to Harpoon file 10 |

### Remove Specific Files
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>r1` | Normal | Remove file 1 | Remove Harpoon file 1 |
| `<leader>r2` | Normal | Remove file 2 | Remove Harpoon file 2 |
| `<leader>r3` | Normal | Remove file 3 | Remove Harpoon file 3 |
| `<leader>r4` | Normal | Remove file 4 | Remove Harpoon file 4 |
| `<leader>r5` | Normal | Remove file 5 | Remove Harpoon file 5 |
| `<leader>r6` | Normal | Remove file 6 | Remove Harpoon file 6 |
| `<leader>r7` | Normal | Remove file 7 | Remove Harpoon file 7 |
| `<leader>r8` | Normal | Remove file 8 | Remove Harpoon file 8 |
| `<leader>r9` | Normal | Remove file 9 | Remove Harpoon file 9 |
| `<leader>r10` | Normal | Remove file 10 | Remove Harpoon file 10 |

---

## Git Signs
*Defined in: `lua/plugins/gitsigns.lua`*

### Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `]c` | Normal | Next change | Jump to next git change |
| `[c` | Normal | Previous change | Jump to previous git change |

### Actions
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>hs` | Normal, Visual | Stage hunk | Git stage hunk |
| `<leader>hr` | Normal, Visual | Reset hunk | Git reset hunk |
| `<leader>hS` | Normal | Stage buffer | Git stage entire buffer |
| `<leader>hu` | Normal | Undo stage hunk | Git undo stage hunk |
| `<leader>hR` | Normal | Reset buffer | Git reset entire buffer |
| `<leader>hp` | Normal | Preview hunk | Git preview hunk |
| `<leader>hb` | Normal | Blame line | Git blame current line |
| `<leader>hd` | Normal | Diff index | Git diff against index |
| `<leader>hD` | Normal | Diff last commit | Git diff against last commit |

### Toggles
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>tb` | Normal | Toggle blame | Toggle git show blame line |
| `<leader>tD` | Normal | Toggle deleted | Toggle git show deleted |

---

## Blame (Git Blame Virtual Text)
*Defined in: `lua/plugins/blame.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>gb` | Normal | Toggle git blame | Toggle Git Blame (virtual text) |

---

## Copilot (AI Assistance)
*Defined in: `lua/plugins/copilot.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-J>` | Insert | Accept suggestion | Accept Copilot suggestion |
| `<C-]>` | Insert | Dismiss suggestion | Dismiss Copilot suggestion |
| `<M-]>` | Insert | Next suggestion | Next Copilot suggestion |
| `<M-[>` | Insert | Previous suggestion | Previous Copilot suggestion |

---

## Terminal (ToggleTerm)
*Defined in: `lua/plugins/toggleterm.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-\>` | All | Toggle terminal | Open/close terminal (built-in) |
| `<leader>th` | Normal | Horizontal terminal | Toggle horizontal terminal |
| `<leader>tv` | Normal | Vertical terminal | Toggle vertical terminal |
| `<leader>tt` | Normal | Floating terminal | Toggle floating terminal |

---

## LSP (Language Server Protocol)
*Defined in: `lua/plugins/nvim-lspconfig.lua`*
*Note: These keymaps are only active when LSP is attached to a buffer*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `grn` | Normal | Rename | LSP rename symbol |
| `gra` | Normal, Visual | Code action | LSP code action |
| `grr` | Normal | References | LSP goto references |
| `gri` | Normal | Implementation | LSP goto implementation |
| `grd` | Normal | Definition | LSP goto definition |
| `grD` | Normal | Declaration | LSP goto declaration |
| `gO` | Normal | Document symbols | Open document symbols |
| `gW` | Normal | Workspace symbols | Open workspace symbols |
| `grt` | Normal | Type definition | LSP goto type definition |
| `<leader>ti` | Normal | Toggle hints | Toggle inlay hints (if supported) |

---

## Debug (DAP)
*Defined in: `lua/plugins/nvim-dap.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<F5>` | Normal | Continue | Debug start/continue |
| `<F1>` | Normal | Step into | Debug step into function |
| `<F2>` | Normal | Step over | Debug step over line |
| `<F3>` | Normal | Step out | Debug step out of function |
| `<leader>b` | Normal | Breakpoint | Toggle breakpoint |
| `<leader>B` | Normal | Conditional breakpoint | Set conditional breakpoint |
| `<F7>` | Normal | Debug UI | Toggle debug UI |

---

## File Explorer (Neo-tree)
*Defined in: `lua/plugins/neo-tree.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `\` | Normal | Toggle explorer | Reveal/close Neo-tree file explorer |

---

## Formatting (Conform)
*Defined in: `lua/plugins/conform.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>f` | All | Format buffer | Format current buffer |

---

## Git (LazyGit)
*Defined in: `lua/plugins/lazygit.lua`*

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>lg` | Normal | LazyGit | Open LazyGit interface |

---

## Quick Reference by Prefix

### `<leader>` + Single Letter
- `a` - Harpoon add file
- `b` - Debug breakpoint
- `B` - Debug conditional breakpoint
- `c` - Harpoon clear all
- `f` - Format buffer
- `h` - Harpoon menu
- `q` - Diagnostic quickfix
- `u` - Harpoon remove current

### `<leader>` + Numbers (1-10)
- Jump to corresponding Harpoon file

### `<leader>b` + Letter (Buffer operations)
- `bp` - Toggle pin buffer
- `bP` - Delete non-pinned buffers
- `bo` - Delete other buffers
- `br` - Delete buffers to right
- `bl` - Delete buffers to left

### `<leader>g` + Letter (Git operations)
- `gb` - Toggle git blame (virtual text)

### `<leader>h` + Letter (Git operations)
- `hs` - Stage hunk
- `hr` - Reset hunk
- `hS` - Stage buffer
- `hu` - Undo stage hunk
- `hR` - Reset buffer
- `hp` - Preview hunk
- `hb` - Blame line
- `hd` - Diff index
- `hD` - Diff last commit

### `<leader>S` + Letter (Spectre operations)
- `Sr` - Replace in files
- `Sw` - Search current word
- `Sf` - Search in current file

### `<leader>s` + Letter (Search operations)
- `sh` - Search help
- `sk` - Search keymaps
- `sf` - Search files
- `ss` - Search select
- `sw` - Search word
- `sg` - Search grep
- `sd` - Search diagnostics
- `sr` - Search resume
- `s.` - Search recent files
- `s/` - Search open files
- `sn` - Search neovim files
- `sm` - Search harpoon marks

### `<leader>t` + Letter (Toggle operations)
- `tb` - Toggle git blame
- `tD` - Toggle git deleted
- `th` - Toggle horizontal terminal
- `ti` - Toggle inlay hints
- `tv` - Toggle vertical terminal
- `tt` - Toggle floating terminal

### `<leader>r` + Numbers (Remove Harpoon files)
- `r1` through `r10` - Remove corresponding Harpoon file

---

*This keymap reference is generated from the Neovim configuration located at `/home/rahad/.config/nvim/`*