//
//  DeviceModels.h
//  DeviceModels
//
//  Created by 高文立 on 2020/1/21.
//  Copyright © 2020 gwl. All rights reserved.
//  https://www.theiphonewiki.com/wiki/Models#cite_note-china-1

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, DeviceModelsType) {
    DeviceModelsTypeIPhoneNone,
    
    DeviceModelsTypeIPhoneSimulator,
    
    DeviceModelsTypeIPhone,
    DeviceModelsTypeIPhone3G,
    DeviceModelsTypeIPhone3GS,
    DeviceModelsTypeIPhone4,
    DeviceModelsTypeIPhone4S,
    DeviceModelsTypeIPhone5,
    DeviceModelsTypeIPhone5C,
    DeviceModelsTypeIPhone5S,
    DeviceModelsTypeIPhone6,
    DeviceModelsTypeIPhone6Plus,
    DeviceModelsTypeIPhone6S,
    DeviceModelsTypeIPhone6SPlus,
    DeviceModelsTypeIPhoneSE,
    DeviceModelsTypeIPhone7,
    DeviceModelsTypeIPhone7Plus,
    DeviceModelsTypeIPhone8,
    DeviceModelsTypeIPhone8Plus,
    DeviceModelsTypeIPhoneX,
    DeviceModelsTypeIPhoneXR,
    DeviceModelsTypeIPhoneXS,
    DeviceModelsTypeIPhoneXSMax,
    DeviceModelsTypeIPhone11,
    DeviceModelsTypeIPhone11Pro,
    DeviceModelsTypeIPhone11ProMax,
    
    DeviceModelsTypeIPodTouch,
    DeviceModelsTypeIPodTouch2,
    DeviceModelsTypeIPodTouch3,
    DeviceModelsTypeIPodTouch4,
    DeviceModelsTypeIPodTouch5,
    DeviceModelsTypeIPodTouch6,
    DeviceModelsTypeIPodTouch7,
    
    DeviceModelsTypeIPadMini,
    DeviceModelsTypeIPadMini2,
    DeviceModelsTypeIPadMini3,
    DeviceModelsTypeIPadMini4,
    DeviceModelsTypeIPadMini5,
    
    DeviceModelsTypeIPad,
    DeviceModelsTypeIPad2,
    DeviceModelsTypeIPad3,
    DeviceModelsTypeIPad4,
    DeviceModelsTypeIPad5,
    DeviceModelsTypeIPad6,
    
    DeviceModelsTypeIPadPro12_9,
    DeviceModelsTypeIPadPro2_12_9,
    DeviceModelsTypeIPadPro3_12_9,
    DeviceModelsTypeIPadPro9_7,
    DeviceModelsTypeIPadPro10_5,
    DeviceModelsTypeIPadPro11,
    
    DeviceModelsTypeIPadAir,
    DeviceModelsTypeIPadAir2,
    DeviceModelsTypeIPadAir3
};

@interface GWLDeviceModels : NSObject

+ (instancetype)sharedInstance ;

- (DeviceModelsType)modelsType ;

- (NSString *)modelsString ;

@end

NS_ASSUME_NONNULL_END
