#    chmod +x Bash-Scripts/Bash.sh
#    chmod +x Bash-Scripts/Bash-Create-Must-Files.sh
#    chmod +x Bash-Scripts/Bash-Git-Add.sh
#    chmod +x Bash-Scripts/Bash-Git-Connect.sh
#    chmod +x Bash-Scripts/Bash-Git-Disconnect.sh
#    Bash-Scripts/Bash.sh
#    Bash-Scripts/Bash-Create-Must-Files.sh
#    Bash-Scripts/Bash-Git-Add.sh
#    Bash-Scripts/Bash-Git-Connect.sh
#    Bash-Scripts/Bash-Git-Disconnect.sh
current_dir=$(pwd)
parent_dir=$(dirname "$current_dir")

clear

echo "$current_dir";
echo "$parent_dir";


#    echo "\n\n"; echo "------------------------------------------------------------------------------------------------"
#    echo "Запуск Bash-Git-Connect.sh..."; ./Bash-Scripts/Bash-Git-Connect.sh
#    if [ $? -eq 0 ]; then echo "Bash-Git-Connect.sh выполнен успешно."
#    else echo "Bash-Git-Connect.sh завершился с ошибкой."; exit 1; fi

echo "\n\n"; echo "------------------------------------------------------------------------------------------------"
echo "Запуск Bash-Git-Add.sh..."; ./Bash-Scripts/Bash-Git-Add.sh
if [ $? -eq 0 ]; then echo "Bash-Git-Add.sh выполнен успешно."
else echo "Bash-Git-Add.sh завершился с ошибкой."; exit 1; fi

#    echo "\n\n"; echo "------------------------------------------------------------------------------------------------"
#    echo "Запуск Bash-Git-Disconnect.sh..."; ./Bash-Scripts/Bash-Git-Disconnect.sh
#    if [ $? -eq 0 ]; then echo "Bash-Git-Disconnect.sh выполнен успешно."
#    else echo "Bash-Git-Disconnect.sh завершился с ошибкой."; exit 1; fi

