//
//  DeviceModels.m
//  DeviceModels
//
//  Created by 高文立 on 2020/1/21.
//  Copyright © 2020 gwl. All rights reserved.
//  

#import "GWLDeviceModels.h"
#include <sys/sysctl.h>

@implementation GWLDeviceModels

+ (void)modelsString:(void (^)(NSString * _Nonnull))modelsString modelsType:(void (^)(DeviceModelsType))modelsType {
    DeviceModelsType type = DeviceModelsTypeUnknown;
    NSString *string = @"Unknown";
    
    size_t size;
    int nR = sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = (char *)malloc(size);
    nR = sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    
    
#pragma mark - iPad
    if ([platform isEqualToString:@"iPad1,1"]) {
        type = DeviceModelsTypeIPad;
        string = @"iPad (A1219/A1337)";
    }
    if ([platform isEqualToString:@"iPad2,1"]) {
        type = DeviceModelsTypeIPad2;
        string = @"iPad 2 (A1395)";
    }
    if ([platform isEqualToString:@"iPad2,2"]) {
        type = DeviceModelsTypeIPad2;
        string = @"iPad 2 (A1396)";
    }
    if ([platform isEqualToString:@"iPad2,3"]) {
        type = DeviceModelsTypeIPad2;
        string = @"iPad 2 (A1397)";
    }
    if ([platform isEqualToString:@"iPad2,4"]) {
        type = DeviceModelsTypeIPad2;
        string = @"iPad 2 (A1395)";
    }
    if ([platform isEqualToString:@"iPad3,1"]) {
        type = DeviceModelsTypeIPad_3rd;
        string = @"iPad (3rd generation) (A1416)";
    }
    if ([platform isEqualToString:@"iPad3,2"]) {
        type = DeviceModelsTypeIPad_3rd;
        string = @"iPad (3rd generation) (A1403)";
    }
    if ([platform isEqualToString:@"iPad3,3"]) {
        type = DeviceModelsTypeIPad_3rd;
        string = @"iPad (3rd generation) (A1430)";
    }
    if ([platform isEqualToString:@"iPad3,4"]) {
        type = DeviceModelsTypeIPad_4th;
        string = @"iPad (4th generation) (A1458)";
    }
    if ([platform isEqualToString:@"iPad3,5"]) {
        type = DeviceModelsTypeIPad_4th;
        string = @"iPad (4th generation) (A1459)";
    }
    if ([platform isEqualToString:@"iPad3,6"]) {
        type = DeviceModelsTypeIPad_4th;
        string = @"iPad (4th generation) (A1460)";
    }
    if ([platform isEqualToString:@"iPad6,11"]) {
        type = DeviceModelsTypeIPad_5th;
        string = @"iPad (5th generation) (A1822)";
    }
    if ([platform isEqualToString:@"iPad6,12"]) {
        type = DeviceModelsTypeIPad_5th;
        string = @"iPad (5th generation) (A1823)";
    }
    if ([platform isEqualToString:@"iPad7,5"]) {
        type = DeviceModelsTypeIPad_6th;
        string = @"iPad (6th generation) (A1893)";
    }
    if ([platform isEqualToString:@"iPad7,6"]) {
        type = DeviceModelsTypeIPad_6th;
        string = @"iPad (6th generation) (A1954)";
    }
    if ([platform isEqualToString:@"iPad7,11"]) {
        type = DeviceModelsTypeIPad_7th;
        string = @"iPad (7th generation) (A2197)";
    }
    if ([platform isEqualToString:@"iPad7,12"]) {
        type = DeviceModelsTypeIPad_7th;
        string = @"iPad (7th generation) (A2198/A2200)";
    }
    // TODO: iPad 持续更新 ......
    
#pragma mark - iPad Air
    if ([platform isEqualToString:@"iPad4,1"]) {
        type = DeviceModelsTypeIPadAir;
        string = @"iPad Air (A1474)";
    }
    if ([platform isEqualToString:@"iPad4,2"]) {
        type = DeviceModelsTypeIPadAir;
        string = @"iPad Air (A1475)";
    }
    if ([platform isEqualToString:@"iPad4,3"]) {
        type = DeviceModelsTypeIPadAir;
        string = @"iPad Air (A1476)";
    }
    if ([platform isEqualToString:@"iPad5,3"]) {
        type = DeviceModelsTypeIPadAir2;
        string = @"iPad Air 2 (A1566)";
    }
    if ([platform isEqualToString:@"iPad5,4"]) {
        type = DeviceModelsTypeIPadAir2;
        string = @"iPad Air 2 (A1567)";
    }
    if ([platform isEqualToString:@"iPad11,3"]) {
        type = DeviceModelsTypeIPadAir_3rd;
        string = @"iPad Air (3rd generation) (A2152)";
    }
    if ([platform isEqualToString:@"iPad11,4"]) {
        type = DeviceModelsTypeIPadAir_3rd;
        string = @"iPad Air (3rd generation) (A2123/A2153/A2154)";
    }
    // TODO: iPad Air 持续更新 ......
    
#pragma mark - iPad Pro
    if ([platform isEqualToString:@"iPad6,7"]) {
        type = DeviceModelsTypeIPadPro_inch12_9;
        string = @"iPad Pro (12.9-inch) (A1584)";
    }
    if ([platform isEqualToString:@"iPad6,8"]) {
        type = DeviceModelsTypeIPadPro_inch12_9;
        string = @"iPad Pro (12.9-inch) (A1652)";
    }
    if ([platform isEqualToString:@"iPad6,3"]) {
        type = DeviceModelsTypeIPadPro_inch9_7;
        string = @"iPad Pro (9.7-inch) (A1673)";
    }
    if ([platform isEqualToString:@"iPad6,4"]) {
        type = DeviceModelsTypeIPadPro_inch9_7;
        string = @"iPad Pro (9.7-inch) (A1674/A1675)";
    }
    if ([platform isEqualToString:@"iPad7,1"]) {
        type = DeviceModelsTypeIPadPro_inch12_9_2nd;
        string = @"iPad Pro (12.9-inch) (2nd generation) (A1670)";
    }
    if ([platform isEqualToString:@"iPad7,2"]) {
        type = DeviceModelsTypeIPadPro_inch12_9_2nd;
        string = @"iPad Pro (12.9-inch) (2nd generation) (A1671/A1821)";
    }
    if ([platform isEqualToString:@"iPad7,3"]) {
        type = DeviceModelsTypeIPadPro_inch10_5;
        string = @"iPad Pro (10.5-inch) (A1701)";
    }
    if ([platform isEqualToString:@"iPad7,4"]) {
        type = DeviceModelsTypeIPadPro_inch10_5;
        string = @"iPad Pro (10.5-inch) (A1709)";
    }
    if ([platform isEqualToString:@"iPad8,1"] || [platform isEqualToString:@"iPad8,2"]) {
        type = DeviceModelsTypeIPadPro_inch11;
        string = @"iPad Pro (11-inch) (A1980)";
    }
    if ([platform isEqualToString:@"iPad8,3"] || [platform isEqualToString:@"iPad8,4"]) {
        type = DeviceModelsTypeIPadPro_inch11;
        string = @"iPad Pro (11-inch) (A1934/A1979/A2013)";
    }
    if ([platform isEqualToString:@"iPad8,5"] || [platform isEqualToString:@"iPad8,6"]) {
        type = DeviceModelsTypeIPadPro_inch12_9_3rd;
        string = @"iPad Pro (12.9-inch) (3rd generation) (A1876)";
    }
    if ([platform isEqualToString:@"iPad8,7"] || [platform isEqualToString:@"iPad8,8"]) {
        type = DeviceModelsTypeIPadPro_inch12_9_3rd;
        string = @"iPad Pro (12.9-inch) (3rd generation) (A1895/A1983/A2014)";
    }
    
    // TODO: iPad Pro        A??? ......
    if ([platform isEqualToString:@"iPad8,9"] || [platform isEqualToString:@"iPad8,10"]) {
        type = DeviceModelsTypeIPadPro_inch11_2nd;
        string = @"iPad Pro (11-inch) (2nd generation) (?)";
    }
    if ([platform isEqualToString:@"iPad8,11"] || [platform isEqualToString:@"iPad8,12"]) {
        type = DeviceModelsTypeIPadPro_inch12_9_4th;
        string = @"iPad Pro (12.9-inch) (4th generation) (?)";
    }
    // TODO: iPad Pro 持续更新 ......
    
#pragma mark - iPad mini
    if ([platform isEqualToString:@"iPad2,5"]) {
        type = DeviceModelsTypeIPadMini;
        string = @"iPad mini (A1432)";
    }
    if ([platform isEqualToString:@"iPad2,6"]) {
        type = DeviceModelsTypeIPadMini;
        string = @"iPad mini (A1454)";
    }
    if ([platform isEqualToString:@"iPad2,7"]) {
        type = DeviceModelsTypeIPadMini;
        string = @"iPad mini (A1455)";
    }
    if ([platform isEqualToString:@"iPad4,4"]) {
        type = DeviceModelsTypeIPadMini2;
        string = @"iPad mini 2 (A1489)";
    }
    if ([platform isEqualToString:@"iPad4,5"]) {
        type = DeviceModelsTypeIPadMini2;
        string = @"iPad mini 2 (A1490)";
    }
    if ([platform isEqualToString:@"iPad4,6"]) {
        type = DeviceModelsTypeIPadMini2;
        string = @"iPad mini 2 (A1491)";
    }
    if ([platform isEqualToString:@"iPad4,7"]) {
        type = DeviceModelsTypeIPadMini3;
        string = @"iPad mini 3 (A1599)";
    }
    if ([platform isEqualToString:@"iPad4,8"]) {
        type = DeviceModelsTypeIPadMini3;
        string = @"iPad mini 3 (A1600)";
    }
    if ([platform isEqualToString:@"iPad4,9"]) {
        type = DeviceModelsTypeIPadMini3;
        string = @"iPad mini 3 (A1601)";
    }
    if ([platform isEqualToString:@"iPad5,1"]) {
        type = DeviceModelsTypeIPadMini4;
        string = @"iPad mini 4 (A1538)";
    }
    if ([platform isEqualToString:@"iPad5,2"]) {
        type = DeviceModelsTypeIPadMini4;
        string = @"iPad mini 4 (A1550)";
    }
    if ([platform isEqualToString:@"iPad11,1"]) {
        type = DeviceModelsTypeIPadMini_5th;
        string = @"iPad mini (5th generation) (A2133)";
    }
    if ([platform isEqualToString:@"iPad11,2"]) {
        type = DeviceModelsTypeIPadMini_5th;
        string = @"iPad mini (5th generation) (A2124/A2125/A2126)";
    }
    // TODO: iPad mini 持续更新 ......
    
#pragma mark - iPhone
    if ([platform isEqualToString:@"iPhone1,1"]) {
        type = DeviceModelsTypeIPhone;
        string = @"iPhone (A1203)";
    }
    if ([platform isEqualToString:@"iPhone1,2"]) {
        type = DeviceModelsTypeIPhone3G;
        string = @"iPhone 3G (A1241/A1324)";
    }
    if ([platform isEqualToString:@"iPhone2,1"]) {
        type = DeviceModelsTypeIPhone3GS;
        string = @"iPhone 3GS (A1303/A1325)";
    }
    if ([platform isEqualToString:@"iPhone3,1"] || [platform isEqualToString:@"iPhone3,2"]) {
        type = DeviceModelsTypeIPhone4;
        string = @"iPhone 4 (A1332)";
    }
    if ([platform isEqualToString:@"iPhone3,3"]) {
        type = DeviceModelsTypeIPhone4;
        string = @"iPhone 4 (A1349)";
    }
    if ([platform isEqualToString:@"iPhone4,1"]) {
        type = DeviceModelsTypeIPhone4S;
        string = @"iPhone 4S (A1387/A1431)";
    }
    if ([platform isEqualToString:@"iPhone5,1"]) {
        type = DeviceModelsTypeIPhone5;
        string = @"iPhone 5 (A1428)";
    }
    if ([platform isEqualToString:@"iPhone5,2"]) {
        type = DeviceModelsTypeIPhone5;
        string = @"iPhone 5 (A1429/A1442)";
    }
    if ([platform isEqualToString:@"iPhone5,3"]) {
        type = DeviceModelsTypeIPhone5C;
        string = @"iPhone 5c (A1456/A1532)";
    }
    if ([platform isEqualToString:@"iPhone5,4"]) {
        type = DeviceModelsTypeIPhone5C;
        string = @"iPhone 5c (A1507/A1516/A1526/A1529)";
    }
    if ([platform isEqualToString:@"iPhone6,1"]) {
        type = DeviceModelsTypeIPhone5S;
        string = @"iPhone 5s (A1453/A1533)";
    }
    if ([platform isEqualToString:@"iPhone6,2"]) {
        type = DeviceModelsTypeIPhone5S;
        string = @"iPhone 5s (A1457/A1518/A1528/A1530)";
    }
    if ([platform isEqualToString:@"iPhone7,2"]) {
        type = DeviceModelsTypeIPhone6;
        string = @"iPhone 6 (A1549/A1586/A1589)";
    }
    if ([platform isEqualToString:@"iPhone7,1"]) {
        type = DeviceModelsTypeIPhone6Plus;
        string = @"iPhone 6 Plus (A1522/A1524/A1593)";
    }
    if ([platform isEqualToString:@"iPhone8,1"]) {
        type = DeviceModelsTypeIPhone6S;
        string = @"iPhone 6s (A1633/A1688/A1691/A1700)";
    }
    if ([platform isEqualToString:@"iPhone8,2"]) {
        type = DeviceModelsTypeIPhone6SPlus;
        string = @"iPhone 6s Plus (A1634/A1687/A1690/A1699)";
    }
    if ([platform isEqualToString:@"iPhone8,4"]) {
        type = DeviceModelsTypeIPhoneSE;
        string = @"iPhone SE (A1662/A1723/A1724)";
    }
    if ([platform isEqualToString:@"iPhone9,1"]) {
        type = DeviceModelsTypeIPhone7;
        string = @"iPhone 7 (A1660/A1779/A1780)";
    }
    if ([platform isEqualToString:@"iPhone9,3"]) {
        type = DeviceModelsTypeIPhone7;
        string = @"iPhone 7 (A1778)";
    }
    if ([platform isEqualToString:@"iPhone9,2"]) {
        type = DeviceModelsTypeIPhone7Plus;
        string = @"iPhone 7 Plus (A1661/A1785/A1786)";
    }
    if ([platform isEqualToString:@"iPhone9,4"]) {
        type = DeviceModelsTypeIPhone7Plus;
        string = @"iPhone 7 Plus (A1784)";
    }
    if ([platform isEqualToString:@"iPhone10,1"]) {
        type = DeviceModelsTypeIPhone8;
        string = @"iPhone 8 (A1863/A1906/A1907)";
    }
    if ([platform isEqualToString:@"iPhone10,4"]) {
        type = DeviceModelsTypeIPhone8;
        string = @"iPhone 8 (A1905)";
    }
    if ([platform isEqualToString:@"iPhone10,2"]) {
        type = DeviceModelsTypeIPhone8Plus;
        string = @"iPhone 8 Plus (A1864/A1898/A1899)";
    }
    if ([platform isEqualToString:@"iPhone10,5"]) {
        type = DeviceModelsTypeIPhone8Plus;
        string = @"iPhone 8 Plus (A1897)";
    }
    if ([platform isEqualToString:@"iPhone10,3"]) {
        type = DeviceModelsTypeIPhoneX;
        string = @"iPhone X (A1865/A1902)";
    }
    if ([platform isEqualToString:@"iPhone10,6"]) {
        type = DeviceModelsTypeIPhoneX;
        string = @"iPhone X (A1901)";
    }
    if ([platform isEqualToString:@"iPhone11,8"]) {
        type = DeviceModelsTypeIPhoneXR;
        string = @"iPhone XR (A1984/A2105/A2106/A2108)";
    }
    if ([platform isEqualToString:@"iPhone11,2"]) {
        type = DeviceModelsTypeIPhoneXS;
        string = @"iPhone XS (A1920/A2097/A2098/A2100)";
    }
    if ([platform isEqualToString:@"iPhone11,6"]) {
        type = DeviceModelsTypeIPhoneXSMax;
        string = @"iPhone XS Max (A1921/A2101/A2102/A2104)";
    }
    if ([platform isEqualToString:@"iPhone11,4"]) {
        type = DeviceModelsTypeIPhoneXSMax;
        string = @"iPhone XS Max (?)";
    }
    if ([platform isEqualToString:@"iPhone12,1"]) {
        type = DeviceModelsTypeIPhone11;
        string = @"iPhone 11 (A2111/A2221/A2223)";
    }
    if ([platform isEqualToString:@"iPhone12,3"]) {
        type = DeviceModelsTypeIPhone11Pro;
        string = @"iPhone 11 Pro (A2160/A2215/A2217)";
    }
    if ([platform isEqualToString:@"iPhone12,5"]) {
        type = DeviceModelsTypeIPhone11ProMax;
        string = @"iPhone 11 Pro Max (A2161/A2220/A2218)";
    }
    // TODO: iPhone     A??????   ......
    if ([platform isEqualToString:@"iPhone12,8"]) {
        type = DeviceModelsTypeIPhone11ProMax;
        string = @"iPhone SE (2nd generation) (?)";
    }
    // TODO: iPhone 持续更新 ......
    
#pragma mark - iPod touch
    if ([platform isEqualToString:@"iPod1,1"]) {
        type = DeviceModelsTypeIPodTouch;
        string = @"iPod touch (A1213)";
    }
    if ([platform isEqualToString:@"iPod2,1"]) {
        type = DeviceModelsTypeIPodTouch_2nd;
        string = @"iPod touch (2nd generation) (A1288/A1319)";
    }
    if ([platform isEqualToString:@"iPod3,1"]) {
        type = DeviceModelsTypeIPodTouch_3rd;
        string = @"iPod touch (3rd generation) (A1318)";
    }
    if ([platform isEqualToString:@"iPod4,1"]) {
        type = DeviceModelsTypeIPodTouch_4th;
        string = @"iPod touch (4th generation) (A1367)";
    }
    if ([platform isEqualToString:@"iPod5,1"]) {
        type = DeviceModelsTypeIPodTouch_5th;
        string = @"iPod touch (5th generation) (A1421/A1509)";
    }
    if ([platform isEqualToString:@"iPod7,1"]) {
        type = DeviceModelsTypeIPodTouch_6th;
        string = @"iPod touch (6th generation) (A1574)";
    }
    if ([platform isEqualToString:@"iPod9,1"]) {
        type = DeviceModelsTypeIPodTouch_7th;
        string = @"iPod touch (7th generation) (A2178)";
    }
    // TODO: iPod touch 持续更新 ......
    
#pragma mark - Simulator
    if ([platform isEqualToString:@"i386"] || [platform isEqualToString:@"x86_64"]) {
        type = DeviceModelsTypeSimulator;
        string = @"Simulator";
    }
    
    if (modelsString) {
        modelsString(string);
    }
    
    if (modelsType) {
        modelsType(type);
    }
}

@end
