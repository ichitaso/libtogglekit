#import <Foundation/Foundation.h>
#import "TKInterface.h"

@interface TKToggleController : NSObject

+ (TKToggleController *)sharedInstance;

// WiFi
- (BOOL)wifiEnabled;
- (void)toggleWiFi;

// Airplane mode
- (BOOL)airplaneModeEnabled;
- (void)toggleAirplaneMode;

// Bluetooth
- (BOOL)bluetoothEnabled;
- (void)toggleBluetooth;

// Location services
- (BOOL)locationServicesEnabled;
- (void)toggleLocationServices;

// Sound
- (void)toggleSound;

// Rotation
- (BOOL)rotationEnabled;
- (void)toggleRotation;

@end