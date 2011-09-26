# install
all:
install:
	cp coffeesensor.sh /usr/local/bin
	cp local.vitroid.coffeesensor.plist ~/Library/LaunchAgents
	launchctl unload local.vitroid.coffeesensor.plist
	launchctl load local.vitroid.coffeesensor.plist
