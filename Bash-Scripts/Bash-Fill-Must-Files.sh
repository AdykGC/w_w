#!/bin/bash

# Устанавливаем текущие пути
Dir_Current=$(pwd);
Dir_Parent=$(dirname "$Dir_Current");
Dir_Project="$Dir_Current/Project"

# Устанавливаем переменные для вывода
RUN="   >>   ";
Process_TRUE="+ | ";
Process_FALSE="= | "

# Файлы для записи
FILES=(".gitignore" ".css" ".html" ".xml" ".env")

# Пути к файлам
File_Env="$Dir_Project/.env";
File_GitIgnore="$Dir_Project/.gitignore"

# Информация для .env файла
Env_Info=(
"PostgreSQL_DB_1_HOST=db"
"PostgreSQL_DB_1_NAME=postgres"
"PostgreSQL_DB_1_USER=postgres"
"PostgreSQL_DB_1_PASSWORD=DDRM74df"
"PostgreSQL_DB_1_PORT=5432"
)

# Информация для .gitignore файла
GitIgnore_Info=(
  "# Ignore compiled files"
  "*.class"
  "*.o"
  "*.exe"
  "# Ignore log files"
  "*.log"
  "# Ignore system files"
  ".DS_Store"
  "# macOS system file"
  "Thumbs.db"
  "# Windows system file"
  "# Ignore node_modules (for Node.js projects)"
  "node_modules/"
  "# Ignore Python bytecode"
  "__pycache__/"
  "*.pyc"
  "# Ignore environment configuration files"
  ".env"
  "# Ignore IDE configuration files"
  ".vscode/"
  ".idea/"
  "# Ignore build and dist folders (common in web projects)"
  "build/"
  "dist/"
  ""
  ""
  ""
  "# git rm --cached <file>"
  "# Удаляет файл из индекса Git, но оставляет его на вашем компьютере"
  "# git rm --cached example.log"
  "# git commit -m \"Stop tracking example.log\""
  ""
  ""
  ""
  "# Удалить все файлы из репозитория, но оставить их локально:"
  "# git rm -r --cached ."
  "# git commit -m \"Remove all files from repository\""
  "# git push origin main"
  "# или используйте вашу ветку вместо 'main'"
  ""
  ""
  ""
  "# Удалить все файлы и из репозитория, и с локальной машины:"
  "# git rm -r ."
  "# git commit -m \"Remove all files from repository and local\""
  "# git push origin main"
  "# или используйте вашу ветку вместо 'main'"
  ""
  ""
  ""
  "# Полностью очистить репозиторий (удалить все файлы и историю коммитов):"
  "# rm -rf .git"
  "# Удаляет всю историю Git"
  "# git init"
  ""
  ""
  ""
  "# Инициализирует новый репозиторий"
  "# git add ."
  "# git commit -m \"Initial commit\""
  "# git remote add origin <URL-вашего-репозитория>"
  "# git push -u origin main --force"
)

# Запись файлов
> "$File_Env"
for FILE in "${Env_Info[@]}"; do
    echo "$FILE" >> "$File_Env"
done

> "$File_GitIgnore"
for FILE in "${GitIgnore_Info[@]}"; do
    echo "$FILE" >> "$File_GitIgnore"
done