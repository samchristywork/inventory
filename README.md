![Banner](https://s-christy.com/sbs/status-banner.svg?icon=content/inventory&hue=160&title=Inventory&description=A%20command-line%20tool%20for%20managing%20physical%20item%20inventories)

## Overview

Inventory is a Bash script for tracking physical items stored in named
containers. Items are recorded with a container name, quantity, and description
in a plain TSV file at `~/.inventory`. A separate checkout log at
`~/.inventory_checkout` tracks which items have been borrowed and returned.

Interactive subcommands use `fzf` for fuzzy selection, making it fast to find
and act on items without typing exact names. Non-interactive modes (search with
an argument, export, import) work well in scripts and pipelines.

## Features

- Add items to named containers with quantities
- Duplicate detection on `add` with offer to update quantity in place
- Interactive item selection via `fzf` for checkout, update, move, and remove
- `show` displays items grouped by container with summed quantities
- `search` supports both interactive fzf mode and non-interactive grep mode
- `checkout` / `status` / `history` track item loans and returns
- `rename` renames all entries for a container in one operation
- `move` reassigns an item to a different container
- `sort` sorts the inventory file in place by container then item name
- `export` produces RFC 4180-compliant CSV or JSON output
- `import` reads CSV files using Python's csv module for correct quoting
- `count` reports both entry count and total summed quantity
- Tab-completion scripts for bash and fish in `completions/`

## Usage

```
Usage: inventory <command>
Commands:
  add        - Add an item to the inventory
  checkout   - Checkout an item from the inventory
  containers - List all containers
  search     - Search the inventory
  count      - Count the number of items in the inventory
  show       - Show the inventory
  update     - Update the quantity of an item
  move       - Move an item to a different container
  remove     - Remove an item from the inventory
  rename     - Rename a container
  history    - Show checkout history
  status     - Show currently checked out items
  export     - Export inventory as CSV or JSON
  import     - Import inventory from a CSV file
  sort       - Sort the inventory by container then item
  edit       - Edit the inventory
```

## Installation

Copy the script to a directory on your `PATH`:

```
cp inventory ~/.local/bin/
```

Optionally install tab completions:

```
# fish
cp completions/inventory.fish ~/.config/fish/completions/

# bash (add to .bashrc)
source /path/to/completions/inventory.bash
```

## Dependencies

```
bash
fzf
python3
```

## License

This work is licensed under the GNU General Public License version 3 (GPLv3).

[<img src="https://s-christy.com/status-banner-service/GPLv3_Logo.svg" width="150" />](https://www.gnu.org/licenses/gpl-3.0.en.html)
