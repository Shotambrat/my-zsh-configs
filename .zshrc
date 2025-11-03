
# Загружает все модули в папке config

if [[ -d "$HOME/.zsh/config" ]]; then
  for file in "$HOME/.zsh/config"/*.zsh; do
    [[ -r "file" ]] && source "file"
  done
  unset file
fi


# Optional for local configuration files with abbriviature .local
[[ -f "HOME/.zshrc.local" ]] && source "HOME/.zshrc.local"
