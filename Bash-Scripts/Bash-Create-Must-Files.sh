Dir_Current=$(pwd); Dir_Parent=$(dirname "$Dir_Current"); Dir_Project="$Dir_Current/Project"
RUN="   >>   "; Process_TRUE="+ | "; Process_FALSE="= | "
FILES=(".gitignore" ".css" ".html" ".xml" ".env")
File_Env="$Dir_Project/.env"
Env_Info=(
"Password_1:ADDADAD:"
"Password_2:AD1241AD"
"Password_3:ADDADAD2324"
"Password_4:ADDADwwAsdsdD.asd"
"Password_5:cdcdddfd"
)

if [ ! -d "$Dir_Project" ]; then
    mkdir -p "$Dir_Project"
    echo "Директория создана: $Dir_Project"
else
    echo "$Dir_Project"
fi

for FILE in "${FILES[@]}"; do
    if [ ! -f "$Dir_Project/$FILE" ]; then
        touch "$Dir_Project/$FILE";   echo "$RUN $Process_TRUE $Dir_Project/$FILE";
    else
        echo "$RUN $Process_FALSE $Dir_Project/$FILE";
    fi
done

> "$File_Env"
for FILE in "${Env_Info[@]}"; do
    echo "$FILE" >> "$File_Env"
done
