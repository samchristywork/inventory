_inventory() {
  local cur prev
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  local subcommands="add checkout containers search count show update move remove rename history status export import edit"

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=($(compgen -W "$subcommands" -- "$cur"))
    return
  fi

  case "$prev" in
    export)
      COMPREPLY=($(compgen -W "csv json" -- "$cur"))
      ;;
    import)
      COMPREPLY=($(compgen -f -- "$cur"))
      ;;
    move|rename|show)
      local containers
      containers=$(cut -f1 "$HOME/.inventory" 2>/dev/null | sort | uniq)
      COMPREPLY=($(compgen -W "$containers" -- "$cur"))
      ;;
  esac
}

complete -F _inventory inventory
