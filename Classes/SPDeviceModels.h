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
    DeviceModelsTypeUnknown,
    
    DeviceModelsTypeSimulator,
    
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
    DeviceModelsTypeIPodTouch_2nd,
    DeviceModelsTypeIPodTouch_3rd,
    DeviceModelsTypeIPodTouch_4th,
    DeviceModelsTypeIPodTouch_5th,
    DeviceModelsTypeIPodTouch_6th,
    DeviceModelsTypeIPodTouch_7th,
    
    DeviceModelsTypeIPadMini,
    DeviceModelsTypeIPadMini2,
    DeviceModelsTypeIPadMini3,
    DeviceModelsTypeIPadMini4,
    DeviceModelsTypeIPadMini_5th,
    
    DeviceModelsTypeIPad,
    DeviceModelsTypeIPad2,
    DeviceModelsTypeIPad_3rd,
    DeviceModelsTypeIPad_4th,
    DeviceModelsTypeIPad_5th,
    DeviceModelsTypeIPad_6th,
    DeviceModelsTypeIPad_7th,
    
    DeviceModelsTypeIPadPro_inch12_9,
    DeviceModelsTypeIPadPro_inch12_9_2nd,
    DeviceModelsTypeIPadPro_inch12_9_3rd,
    DeviceModelsTypeIPadPro_inch12_9_4th,
    DeviceModelsTypeIPadPro_inch9_7,
    DeviceModelsTypeIPadPro_inch10_5,
    DeviceModelsTypeIPadPro_inch11,
    DeviceModelsTypeIPadPro_inch11_2nd,
    
    DeviceModelsTypeIPadAir,
    DeviceModelsTypeIPadAir2,
    DeviceModelsTypeIPadAir_3rd
};

@interface SPDeviceModels : NSObject

+ (void)modelsString:(void (^)(NSString *string))modelsString modelsType:(void (^)(DeviceModelsType type))modelsType ;

@end

NS_ASSUME_NONNULL_END
