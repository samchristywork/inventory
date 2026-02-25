set -l subcommands add checkout containers search count show update move remove rename history status export import edit

complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a add        -d "Add an item to the inventory"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a checkout   -d "Checkout an item from the inventory"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a containers -d "List all containers"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a search     -d "Search the inventory"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a count      -d "Count the number of items"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a show       -d "Show the inventory"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a update     -d "Update the quantity of an item"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a move       -d "Move an item to a different container"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a remove     -d "Remove an item from the inventory"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a rename     -d "Rename a container"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a history    -d "Show checkout history"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a status     -d "Show currently checked out items"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a export     -d "Export inventory as CSV or JSON"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a import     -d "Import inventory from a CSV file"
complete -c inventory -f -n "not __fish_seen_subcommand_from $subcommands" -a edit       -d "Edit the inventory"

complete -c inventory -f -n "__fish_seen_subcommand_from export" -a "csv json"

complete -c inventory -F -n "__fish_seen_subcommand_from import"

function __inventory_containers
  cut -f1 ~/.inventory 2>/dev/null | sort | uniq
end

complete -c inventory -f -n "__fish_seen_subcommand_from move rename" -a "(__inventory_containers)"
