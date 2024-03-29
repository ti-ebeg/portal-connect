#!/bin/sh
echo "Instalando depedencias"
apt update && apt upgrade -y && apt install gnome-tweaks git chromium-browser -y
echo "Acessando pasta para trabalhos"
cd /tmp/
echo "Clonando repositórios"
git clone https://github.com/ti-ebeg/portal-connect.git
echo "Acessando pasta para inicio dos trabalhos"
cd portal-connect
echo "Tornando o script executável ...........................[OK]"
chmod +x kiosk.sh
echo "80% concluído ...........................[OK]"
echo "Movendo arquivos para as pastas corretas ..."
mv kiosk.sh /usr/bin/
mv com.kiosk.desktop /usr/share/applications/
mv com.kiosk.WindowManager.desktop /usr/share/applications/
mv sh.com.kiosk.desktop /usr/share/xsessions/com.kiosk.desktop
echo "90% concluído ...........................[OK]"
echo "Tenha paciência meu jovem Padawan"
echo "Colocando o programa na inicialização do sistema"
#systemctl enable kiosk.service
echo "Bom, eu acho que é isso... Vou iniciar o programa"
exit
echo "Removendo Algumas customizações do Ubuntu"
gnome-extensions disable ubuntu-dock@ubuntu.com && gnome-extensions disable ding@rastersoft.com && gsettings set org.gnome.mutter overlay-key ''
sh /usr/bin/kiosk.sh
done
