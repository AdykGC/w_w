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

# Проверка Директории
if [ ! -d "$Dir_Project" ]; then
    mkdir -p "$Dir_Project"
    echo "Директория создана: $Dir_Project"
else
    echo "$Dir_Project"
fi

# Создание файлов
for FILE in "${FILES[@]}"; do
    if [ ! -f "$Dir_Project/$FILE" ]; then
        touch "$Dir_Project/$FILE";   echo "$RUN $Process_TRUE $Dir_Project/$FILE";
    else
        echo "$RUN $Process_FALSE $Dir_Project/$FILE";
    fi
done