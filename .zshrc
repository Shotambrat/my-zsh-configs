# ~/.zshrc — МОДУЛЬНЫЙ

# Путь к конфигам
ZSH_CONFIG="$HOME/.zsh/config"

# Загружаем ВСЕ .zsh файлы по алфавиту
if [[ -d "$ZSH_CONFIG" ]]; then
  for file in "$ZSH_CONFIG"/*.zsh; do
    [[ -f "$file" ]] && source "$file"
  done
fi

# Локальные настройки (не коммитить)
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# Отладка
echo "Загружено модулей: $(find "$ZSH_CONFIG" -name '*.zsh' | wc -l | xargs)"
echo "✅ Загружено: $(ls ~/.zsh/config/*.zsh | wc -l) модулей"
