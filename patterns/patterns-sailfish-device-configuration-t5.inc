%package -n patterns-sailfish-device-adaptation-t5
Summary: Sailfish HW Adaptation t5

Requires: patterns-sailfish-device-configuration-common-fp2-sibon
Requires: patterns-sailfish-device-adaptation-fp2-sibon

Requires: patterns-sailfish-cellular-apps
Requires: patterns-sailfish-applications
Requires: patterns-sailfish-ui
Requires: patterns-sailfish-store-applications

# jolla-rnd-device will enable usb-moded even when UI is not yet
# brought up (useful during development, available since update10)
Requires: jolla-rnd-device
#End sailfish-porter-tools

Requires: sailfish-content-graphics-z1.5

# For NFC
Requires: jolla-settings-system-nfc

# For flashlight control
Requires: jolla-settings-system-flashlight

# For multi-SIM devices
Requires: jolla-settings-networking-multisim

# Introduced starting Sailfish OS 2.0.4.x:
# 3rd party accounts like Twitter, VK, cloud services, etc
Requires: jolla-settings-accounts-extensions-3rd-party-all

# Introduced starting Sailfish OS 2.1.1.26
# Required for Jolla Store Access
Requires: patterns-sailfish-consumer-generic

Requires: jolla-settings-accounts-extensions-3rd-party-all

# For Mozilla location services (online)
Requires: geoclue-provider-mlsdb

# Sailfish OS CSD tool for hardware testing
Requires: csd

# Devices with 2G or more memory should also include this booster
# to improve camera startup times and the like
Requires: mapplauncherd-booster-silica-qt5-media

# Fxtec pro1 keyboard layout
Requires: xkeyboard-config-pro1

#Add FP support
Requires: sailfish-fpd-community
Requires: sailfish-devicelock-fpd
Requires: droid-fake-crypt

%description -n patterns-sailfish-device-configuration-t5
Pattern with packages for t5 configurations

%files -n patterns-sailfish-device-configuration-t5
