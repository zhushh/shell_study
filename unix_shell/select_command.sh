#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/sbin
export PATH

PS3="Is today your birthday? "
echo -e "\n"

select menu_selection in Yes No Quit
do
    case $menu_selection in
        Yes)
            echo -e "\nHappy Birthday!\n"
            ;;
        No)
            printf "\nIt is someone's birthday today...\
sorry it is not yours\n"
            ;;
        Quit)
            printf "\nLatter tater!\n"
            break
            ;;
        *)
            printf "\nInvalid Answer...Please try again\n"
            ;;
    esac
done
