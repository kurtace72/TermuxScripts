#!/data/data/com.termux/files/usr/bin/bash
# Init script for my termux environment
# Termux doesn't support logins so I'm writing this more for show than for anything else

echo "Quico's Android Terminal"
echo ''

# Some attempt at (weak) security
value=`cat $HOME/init/.lv426.txt | tr [:lower:] [:upper:] | tr [A-Za-z] [N-ZA-Mn-za-m] | tr '123456789' '987654321' | rev`
IFS='_' read -r -a valueArr <<< "$value"

while true; do
    read -p "LOGIN: " u
    case ${u^^} in
        ${valueArr[0]}* ) printf 'PASSWORD: '; read -s pass;
            if [ ${pass^^} = ${valueArr[1]} ]; then
                echo ''; printf '\nWelcome, Quico.\n\n\n'; break; else printf "\n** Code 403 **\n"; exit; fi;;
        * ) echo "** Code 403 **"; exit;;
    esac
done

echo "   SSSSSSSSSSSSSSSKKKKKKKKK    KKKKKKYYYYYYY       YYYYYYY      GGGGGGGGGGGGUUUUUUUU     UUUUUUUYYYYYYY       YYYYYYY";
echo " SS:::::::::::::::K:::::::K    K:::::Y:::::Y       Y:::::Y   GGG::::::::::::U::::::U     U::::::Y:::::Y       Y:::::Y";
echo "S:::::SSSSSS::::::K:::::::K    K:::::Y:::::Y       Y:::::Y GG:::::::::::::::U::::::U     U::::::Y:::::Y       Y:::::Y";
echo "S:::::S     SSSSSSK:::::::K   K::::::Y::::::Y     Y::::::YG:::::GGGGGGGG::::UU:::::U     U:::::UY::::::Y     Y::::::Y";
echo "S:::::S           KK::::::K  K:::::KKYYY:::::Y   Y:::::YYG:::::G       GGGGGGU:::::U     U:::::UYYY:::::Y   Y:::::YYY";
echo "S:::::S             K:::::K K:::::K     Y:::::Y Y:::::Y G:::::G              U:::::D     D:::::U   Y:::::Y Y:::::Y   ";
echo " S::::SSSS          K::::::K:::::K       Y:::::Y:::::Y  G:::::G              U:::::D     D:::::U    Y:::::Y:::::Y    ";
echo "  SS::::::SSSSS     K:::::::::::K         Y:::::::::Y   G:::::G    GGGGGGGGGGU:::::D     D:::::U     Y:::::::::Y     ";
echo "    SSS::::::::SS   K:::::::::::K          Y:::::::Y    G:::::G    G::::::::GU:::::D     D:::::U      Y:::::::Y      ";
echo "       SSSSSS::::S  K::::::K:::::K          Y:::::Y     G:::::G    GGGGG::::GU:::::D     D:::::U       Y:::::Y       ";
echo "            S:::::S K:::::K K:::::K         Y:::::Y     G:::::G        G::::GU:::::D     D:::::U       Y:::::Y       ";
echo "            S:::::KK::::::K  K:::::KKK      Y:::::Y      G:::::G       G::::GU::::::U   U::::::U       Y:::::Y       ";
echo "SSSSSSS     S:::::K:::::::K   K::::::K      Y:::::Y       G:::::GGGGGGGG::::GU:::::::UUU:::::::U       Y:::::Y       ";
echo "S::::::SSSSSS:::::K:::::::K    K:::::K   YYYY:::::YYYY     GG:::::::::::::::G UU:::::::::::::UU     YYYY:::::YYYY    ";
echo "S:::::::::::::::SSK:::::::K    K:::::K   Y:::::::::::Y       GGG::::::GGG:::G   UU:::::::::UU       Y:::::::::::Y    ";
echo " SSSSSSSSSSSSSSS  KKKKKKKKK    KKKKKKK   YYYYYYYYYYYYY          GGGGGG   GGGG     UUUUUUUUU         YYYYYYYYYYYYY    ";

