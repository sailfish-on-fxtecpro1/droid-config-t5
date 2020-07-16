 #!/bin/sh
if [[ 'systemctl is-active --user --quiet pulseaudio' ]]; then
    ANSPATH=$(dbus-send --print-reply \
                        --dest=org.PulseAudio1 \
                        /org/pulseaudio/server_lookup1 \
                        org.freedesktop.DBus.Properties.Get \
                        string:"org.PulseAudio.ServerLookup1" string:"Address");
    DBUSPATH=$(echo "$ANSPATH" | grep -o '".*"' |  sed 's/"\(.*\)".*/\1/');
    while [[ -z "$ANS" ]]
    do
        ANS=$(dbus-send --print-reply --address=${DBUSPATH} \
                        --dest=org.PulseAudio1 \
                        /org/sailfishos/audiosystempassthrough \
                        org.SailfishOS.AudioSystemPassthrough.set_parameters \
                        string:"BT_SCO=on")
        sleep 1
    done
fi
