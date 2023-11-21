#!/bin/sh

if [ ! -e ~/.local/bin/kiosk ]; then
    mkdir -p ~/.local/bin ~/.config
    cat > ~/.local/bin/kiosk << EOF
#!/bin/sh
# This script is located in ~/.local/bin.
# It's provided as an example script to show how
# the kiosk session works.  At the moment, the script
# just starts a text editor open to itself, but it
# should get customized to instead start a full screen
# application designed for the kiosk deployment.
# The "while true" bit just makes sure the application gets
# restarted if it dies for whatever reason.

while true; do
    /usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk --url https://www.r3grupo.com.br/Kiosk/index.html
done

EOF

    chmod +x ~/.local/bin/kiosk
    touch ~/.config/gnome-initial-setup-done
fi

exec ~/.local/bin/kiosk "$@"
