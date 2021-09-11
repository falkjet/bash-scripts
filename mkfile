#!/bin/bash


templates=("Empty File" "Script") 

template=$(for template in "${templates[@]}"
do
    echo $template
done | fzf)

case $template in
    "Empty File")
        echo -n "Enter Filename: "
        read fn
        touch $fn
        $EDITOR "$fn";;
    "Script")
        echo -n "Enter Filename: "
        read fn
        echo '#!/bin/bash' > "$fn"
        chmod +x "$fn"
        vim "$fn";;
esac
