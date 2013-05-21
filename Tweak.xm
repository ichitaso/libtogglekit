#import "TKToggleController.h"

static TKToggleController *sharedInstance = nil;

@implementation TKToggleController

+ (TKToggleController *)sharedInstance
{
	if (!sharedInstance) {
		sharedInstance = [[TKToggleController alloc] init];
	}
	return sharedInstance;
}

- (BOOL)wifiEnabled
{
    if([[%c(SBWiFiManager) sharedInstance] wiFiEnabled]) { return YES; }
    else { return NO; }
}

- (void)toggleWiFi
{
	if(![self wifiEnabled]) {
		[[%c(SBWiFiManager) sharedInstance] setWiFiEnabled:YES];
	}
	else {
		[[%c(SBWiFiManager) sharedInstance] setWiFiEnabled:NO];
	}
}

- (BOOL)airplaneModeEnabled
{
    if([[%c(SBTelephonyManager) sharedTelephonyManager] isInAirplaneMode]) { return YES; }
    else { return NO; }
}

- (void)toggleAirplaneMode
{
	if(![self airplaneModeEnabled]) {
		[[%c(SBTelephonyManager) sharedTelephonyManager] setIsInAirplaneMode:YES];
	}
	else {
		[[%c(SBTelephonyManager) sharedTelephonyManager] setIsInAirplaneMode:NO];
	}
}

- (BOOL)bluetoothEnabled
{
    if([[%c(BluetoothManager) sharedInstance] enabled]) { return YES; }
    else { return NO; }
}

- (void)toggleBluetooth
{
	if(![self bluetoothEnabled]) {
        [[%c(BluetoothManager) sharedInstance] setEnabled:YES];
        [[%c(BluetoothManager) sharedInstance] setPowered:YES];
	}
	else {
        [[%c(BluetoothManager) sharedInstance] setEnabled:NO];
        [[%c(BluetoothManager) sharedInstance] setPowered:NO];
	}
}

- (BOOL)locationServicesEnabled
{
    if([[%c(CLLocationManager) sharedManager] locationServicesEnabled]) { return YES; }
    else { return NO; }
}

- (void)toggleLocationServices
{
	if(![self locationServicesEnabled]) {
		[%c(CLLocationManager) setLocationServicesEnabled:YES];
	}
	else {
		[%c(CLLocationManager) setLocationServicesEnabled:NO];
	}
}

- (void)toggleSound
{
	[[%c(VolumeControl) sharedVolumeControl] toggleMute];
}

- (BOOL)rotationEnabled
{
    if([[objc_getClass("SBOrientationLockManager") sharedInstance] isLocked]) { return YES; }
    else { return NO; }
}

- (void)toggleRotation
{	
	if(![self rotationEnabled]) {
		[[%c(SBOrientationLockManager) sharedInstance] lock];
	}
	else {
		[[%c(SBOrientationLockManager) sharedInstance] unlock];
	}
}

@end