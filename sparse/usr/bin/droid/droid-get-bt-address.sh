echo "droid-get-bt-address: Setting up bluetooth address"

hexchars="0123456789ABCDEF"
addresspath="/var/lib/bluetooth/"
addressfile="$addresspath/board-address"
mac=$( for i in {1..10} ; do echo -n ${hexchars:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )

if [ ! -f "$addressfile" ]; then
    echo "File not found, generating new address"
    mkdir -p "$addresspath"
    chmod 0755 "$addresspath"
    echo 00$mac > "$addressfile"
fi

