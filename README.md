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

## Usage

## Installation

## Dependencies

## License

This work is licensed under the GNU General Public License version 3 (GPLv3).

[<img src="https://s-christy.com/status-banner-service/GPLv3_Logo.svg" width="150" />](https://www.gnu.org/licenses/gpl-3.0.en.html)
