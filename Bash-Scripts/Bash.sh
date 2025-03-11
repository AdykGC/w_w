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
echo "Запуск Bash-Git-Disconnect.sh..."; ./Bash-Scripts/Bash-Git-Disconnect.sh
if [ $? -eq 0 ]; then echo "script1.sh выполнен успешно."
else echo "script1.sh завершился с ошибкой."; exit 1; fi