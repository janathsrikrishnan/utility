
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
            awk -v var=$(namm)
    fi

done
