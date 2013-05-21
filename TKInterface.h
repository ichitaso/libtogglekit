#import <UIKit/UIKit.h>

@interface SBWiFiManager
+ (id)sharedInstance;
- (BOOL)wiFiEnabled;
- (void)setWiFiEnabled:(BOOL)enabled;
@end

@interface SBTelephonyManager
+ (id)sharedTelephonyManager;
- (BOOL)isInAirplaneMode;
- (void)setIsInAirplaneMode:(BOOL)airplane;
@end

@interface BluetoothManager
+ (id)sharedInstance;
- (BOOL)enabled;
- (void)setEnabled:(BOOL)enabled;
- (void)setPowered:(BOOL)powered;
@end

@interface CLLocationManager
+ (id)sharedManager;
- (BOOL)locationServicesEnabled;
- (void)setLocationServicesEnabled:(BOOL)enabled;
@end

@interface SBMediaController
+ (id)sharedInstance;
- (BOOL)muted;
@end

@interface VolumeControl
+ (id)sharedVolumeControl;
- (void)toggleMute;
@end

@interface SBOrientationLockManager
+ (id)sharedInstance;
- (BOOL)isLocked;
- (void)lock;
- (void)unlock;
@end