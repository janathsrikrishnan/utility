red=$(tput setaf 1)
cyan=$(tput setaf 6)
reset=$(tput sgr0)
echo "${cyan}
        __________________  _________________  ____    ____
        \________________/ /    ____________/ |    |  /   /
                |   |     /    /              |    | /   / 
                |   |    /    /_____________  |    |/   /
                |   |    \____________     /  |        / 
                |   |                /    /   |    |\   \\
         _______|   |    ___________/    /    |    | \   \\
         \__________|   /_______________/     |____|  \___\\                                           
                                                           ${red} - creater of utility ${reset}
                                                           "
exit=0
while [ $exit -eq 0 ]
do
    echo -n "command:"
    read command
    
    if [[ $command == "quit" ]]; then
        exit=1
    
    elif [[ $command == 'status'  ]]; then
        echo -n "Enter pid or name (default pid):"
        read name
    
    
        if [[ $name == 'name' ]]; then
            echo "[+]current running process are:"
            ps aux
            ps aux > process.txt
            echo -n "[+]Enter the process name(command):"
            read process_name

            echo "[+]process ids"
            awk -v Name=$process_name '$11 ~ Name {printf "%s ", $2}END{printf "\n"}' process.txt
        fi

        echo -n "[+]Enter the pid: "
        read pid

        cd /proc/$pid
        ls -a

        echo -n "[+]show(pid:$pid):"
        read dir

        cat $dir


    fi
done
