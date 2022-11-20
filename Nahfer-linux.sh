clear
apt install xfce4-whiskermenu-plugin -y

rm -rf ~/.bash_login
cp config_script/.bash_login ~/
####
distro0=$(bash config_script/distro.sh |grep "Parrot" | wc -l)
distro1=$(bash config_script/distro.sh |grep "Kali" | wc -l)
distro2=$(bash config_script/distro.sh |grep "Backbox" | wc -l)
distro3=$(bash config_script/distro.sh |grep "Nahfer" | wc -l)

if [[ "$distro0" != 0 ]]
then
    apt install parrot-menu -y
    echo "Es parrot"
   sleep 1
   cp config_script/config_nhfparrot.tar.gz ~/
   tar xvf ~/config_nhfparrot.tar.gz && cp -r .config_nahfer ~/
   rm -rf .config_nahfer &&  rm ~/config_nhfparrot.tar.gz


elif [[ "$distro1" != 0 ]]
then
    echo "Es kali linux"
    sleep 1
   cp config_script/config_nhfkali.tar.gz ~/
   tar xvf ~/config_nhfkali.tar.gz && cp -r .config_nahfer ~/
   rm -rf .config_nahfer &&  rm ~/config_nhfkali.tar.gz
elif [[ "$distro2" != 0 ]]
then
    echo "Es backbox"
    sleep 1
    cp config_script/config_nhfbackbox.tar.gz ~/
    tar xvf ~/config_nhfbackbox.tar.gz && cp -r .config_nahfer ~/
    rm -rf .config_nahfer && rm ~/config_nhfbackbox.tar.gz
elif [[ "$distro3" != 0 ]]
then
    clear && neofetch
    echo "Tu Distro Es : Nahfer, Por lo tanto, nose puede parchear con el parche."
    sleep 10
    exit
else
     echo "Es debian"
     sleep 1
     cp config_script/config_nhfdebian.tar.gz ~/
     tar xvf ~/config_nhfdebian.tar.gz && cp -r .config_nahfer ~/
     rm -rf .config_nahfer && rm ~/config_nhfdebian.tar.gz
fi

#####


cp -r config_rais/bin /usr/
cp -r config_rais/usr /
mv config_rais/root $(whoami)
cp -r $(whoami) /
cp -r config_rais/etc /
mv $(whoami) config_rais
echo "Nahfer-linux instalado correctamente"
