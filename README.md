# portal-connect


A Ideia desse projeto é provisionar um kiosk com ferramentas corporativas a partir de um sistema operacional linux, de preferência Ubuntu.


Passo a passo do script:

1- Mover o arquivo chamado "kiosk" para a pasta  "/usr/bin/"
2- Tornar o arquivo "kiosk" executável 
3- Mover o arquivo "com.kiosk.desktop" para a pasta "/usr/share/applications/"
4- Mover o arquivo "com.kiosk.WindowManager.desktop" para a pasta "/usr/share/applications"
5- Mover o arquivo "shcom.kiosk.desktop" para a pasta "/usr/share/xsessions/com.kiosk.desktop"
6- Renomear o arquivo "shcom.kiosk.desktop" para "com.kiosk.desktop"
7- Reiniciar GDM
