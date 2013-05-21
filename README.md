#libtogglekit#

##Overview##
libtogglekit makes it easy to switch on and off core device services. (i.e. wifi, bluetooth, location, sound, etc...)

##Setup##
Getting libtogglekit ready for use is beyond easy. Simply make sure you have libtogglekit installed on your iDevice (add it to your control file's depends: line if you plan on deploying to other devices), then just import "TKToggleController.h" into your project and you're ready to go!

##Usage##
Using libtogglekit is relatively straight-forward. You can check to see if (most) services are currently enabled or not by calling:

    [[TKToggleController sharedInstance] wifiEnabled];

This returns a BOOL indicating whether the service in question is enabled or not. To toggle the service on/off simply call:

    [[TKToggleController sharedInstance] toggleWiFi];

Please take a look at TKToggleController.h for a list of all available services and method calls. :)

##Future updates##
I plan on adding more functionality to this library as I need & use it myself. :)