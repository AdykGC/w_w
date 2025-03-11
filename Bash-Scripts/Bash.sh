#    chmod +x Bash-Scripts/Bash.sh
#    chmod +x Bash-Scripts/Bash-Git-Add.sh
#    chmod +x Bash-Scripts/Bash-Git-Connect.sh
#    chmod +x Bash-Scripts/Bash-Git-Disconnect.sh
#    Bash-Scripts/Bash.sh
#    Bash-Scripts/Bash-Git-Add.sh
#    Bash-Scripts/Bash-Git-Connect.sh
#    Bash-Scripts/Bash-Git-Disconnect.sh
current_dir=$(pwd)
parent_dir=$(dirname "$current_dir")

echo "$current_dir";
echo "$parent_dir";

echo "\n\n ------------------------------------------------------------------------------------------------"
echo "Запуск Bash-Git-Connect.sh..."; ./Bash-Scripts/Bash-Git-Connect.sh
if [ $? -eq 0 ]; then echo "script1.sh выполнен успешно."
else echo "script1.sh завершился с ошибкой."; exit 1; fi

echo "\n\n ------------------------------------------------------------------------------------------------"
echo "Запуск Bash-Git-Add.sh..."; ./Bash-Scripts/Bash-Git-Add.sh
if [ $? -eq 0 ]; then echo "script1.sh выполнен успешно."
else echo "script1.sh завершился с ошибкой."; exit 1; fi

echo "\n\n ------------------------------------------------------------------------------------------------"
echo "Выполнение git pull для синхронизации с удалённым репозиторием..."
git pull origin main --rebase
if [ $? -eq 0 ]; then echo "git pull выполнен успешно."
else echo "git pull завершился с ошибкой."; exit 1; fi

echo "\n\n ------------------------------------------------------------------------------------------------"
echo "Запуск Bash-Git-Disconnect.sh..."; ./Bash-Scripts/Bash-Git-Disconnect.sh
if [ $? -eq 0 ]; then echo "script1.sh выполнен успешно."
else echo "script1.sh завершился с ошибкой."; exit 1; fi

echo "\n\n ------------------------------------------------------------------------------------------------"
echo "Выполнение git push для отправки изменений в удалённый репозиторий..."
git push origin main
if [ $? -eq 0 ]; then echo "git push выполнен успешно."
else echo "git push завершился с ошибкой."; exit 1; fi