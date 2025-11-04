### ===== Aliases for add to stash and commit and pushing to remote directory ====

# Just commit with flag -m
gc() {
  if [[ -z "$1" ]]; then
    echo "Ошибка. Объязательно укажи сообщение для своего коммита. Пример 'feat: Do something'";
    return 1;
  fi
  git commit -m "$1"
}

# Push for some branch
gpo() {
  if [[ -z "$1" ]]; then
    echo "Ошибка. Укажи ветку! Пример: 'gpo main'"
    return 1;
  fi
  git push origin $1
}

#Do all of them
gacp() {
  if [[ -z "$1" ]] || [[ -z "$2" ]]; then
    echo "Ошибка. Команда требует двух аргументов: 'gacp 'commit' 'branch name''"
    echo "Пример: 'gacp 'feat: Do something' 'main''"
    return 1;
  fi
  git add . && git commit -m "$1" && git push origin "$2"
}

### ===== Reset indexed files =====

# Restore current file to "modified" status
grstr() {
  if [[ -z "$1" ]]; then
    echo "Ошибка. Требуется аргумент файла которого хочешь убрать из списка индексированных"
    echo "Пример: grstr src/Header.tsx"
    return 1;
  fi
  git restore --staged "$1"
}

