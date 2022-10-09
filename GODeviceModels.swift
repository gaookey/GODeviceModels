
import UIKit

enum GODeviceModelsType {
    case Unknown
    
    case Simulator
    
    case IPhone
    case IPhone3G
    case IPhone3GS
    case IPhone4
    case IPhone4S
    case IPhone5
    case IPhone5C
    case IPhone5S
    case IPhone6
    case IPhone6Plus
    case IPhone6S
    case IPhone6SPlus
    case IPhoneSE_1st
    case IPhone7
    case IPhone7Plus
    case IPhone8
    case IPhone8Plus
    case IPhoneX
    case IPhoneXR
    case IPhoneXS
    case IPhoneXSMax
    case IPhone11
    case IPhone11Pro
    case IPhone11ProMax
    case IPhoneSE_2nd
    case IPhone12mini
    case IPhone12
    case IPhone12Pro
    case IPhone12ProMax
    case IPhone13mini
    case IPhone13
    case IPhone13Pro
    case IPhone13ProMax
    case IPhoneSE_3rd
    case IPhone14
    case IPhone14Plus
    case IPhone14Pro
    case IPhone14ProMax
    
    case IPodTouch
    case IPodTouch_2nd
    case IPodTouch_3rd
    case IPodTouch_4th
    case IPodTouch_5th
    case IPodTouch_6th
    case IPodTouch_7th
    
    case IPadMini
    case IPadMini2
    case IPadMini3
    case IPadMini4
    case IPadMini_5th
    case IPadMini_6th
    
    case IPad
    case IPad2
    case IPad_3rd
    case IPad_4th
    case IPad_5th
    case IPad_6th
    case IPad_7th
    case IPad_8th
    case IPad_9th
    
    case IPadPro_inch12_9
    case IPadPro_inch12_9_2nd
    case IPadPro_inch12_9_3rd
    case IPadPro_inch12_9_4th
    case IPadPro_inch12_9_5th
    
    case IPadPro_inch9_7
    case IPadPro_inch10_5
    
    case IPadPro_inch11
    case IPadPro_inch11_2nd
    case IPadPro_inch11_3rd
    
    case IPadAir
    case IPadAir2
    case IPadAir_3rd
    case IPadAir_4th
    case IPadAir_5th
}

class GODeviceModels {
    
    static let shared = GODeviceModels()
    
    var model = (GODeviceModelsType.Unknown, "Unknown")
    
    private init() {
        
        model = model(id: identifier())
    }
}

extension GODeviceModels {
    
    private func model(id: String) -> (type: GODeviceModelsType, string: String) {
        
        switch id {
            
            // MARK: - iPad
        case "iPad1,1":
            return (.IPad, "iPad")
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":
            return (.IPad2, "iPad 2")
        case "iPad3,1", "iPad3,2", "iPad3,3":
            return (.IPad_3rd, "iPad (3rd generation)")
        case "iPad3,4", "iPad3,5", "iPad3,6":
            return (.IPad_4th, "iPad (4th generation)")
        case "iPad6,11", "iPad6,12":
            return (.IPad_5th, "iPad (5th generation)")
        case "iPad7,5", "iPad7,6":
            return (.IPad_6th, "iPad (6th generation)")
        case "iPad7,11", "iPad7,12":
            return (.IPad_7th, "iPad (7th generation)")
        case "iPad11,6", "iPad11,7":
            return (.IPad_8th, "iPad (8th generation)")
        case "iPad12,1", "iPad12,2":
            return (.IPad_9th, "iPad (9th generation)")
            
            
            // MARK: - iPad Air
        case "iPad4,1", "iPad4,2", "iPad4,3":
            return (.IPadAir, "iPad Air")
        case "iPad5,3", "iPad5,4":
            return (.IPadAir2, "iPad Air 2")
        case "iPad11,3", "iPad11,4":
            return (.IPadAir_3rd, "iPad Air (3rd generation)")
        case "iPad13,1", "iPad13,2":
            return (.IPadAir_4th, "iPad Air (4th generation)")
        case "iPad13,16", "iPad13,17":
            return (.IPadAir_5th, "iPad Air (5th generation)")
            
            
            // MARK: - iPad Pro
        case"iPad6,7", "iPad6,8":
            return (.IPadPro_inch12_9, "iPad Pro (12.9-inch)")
        case "iPad6,3", "iPad6,4":
            return (.IPadPro_inch9_7, "iPad Pro (9.7-inch)")
        case "iPad7,1", "iPad7,2":
            return (.IPadPro_inch12_9_2nd, "iPad Pro (12.9-inch) (2nd generation)")
        case "iPad7,3", "iPad7,4":
            return (.IPadPro_inch10_5, "iPad Pro (10.5-inch)")
        case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":
            return (.IPadPro_inch11, "iPad Pro (11-inch)")
        case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":
            return (.IPadPro_inch12_9_3rd, "iPad Pro (12.9-inch) (3rd generation)")
        case "iPad8,9", "iPad8,10":
            return (.IPadPro_inch11_2nd, "iPad Pro (11-inch) (2nd generation)")
        case "iPad8,11", "iPad8,12":
            return (.IPadPro_inch12_9_4th, "iPad Pro (12.9-inch) (4th generation)")
        case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":
            return (.IPadPro_inch11_3rd, "iPad Pro (11-inch) (3rd generation)")
        case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":
            return (.IPadPro_inch12_9_5th, "iPad Pro (12.9-inch) (5th generation)")
            
            // MARK: - iPad mini
        case"iPad2,5", "iPad2,6", "iPad2,7":
            return (.IPadMini, "iPad mini")
        case "iPad4,4", "iPad4,5", "iPad4,6":
            return (.IPadMini2, "iPad mini 2")
        case "iPad4,7", "iPad4,8", "iPad4,9":
            return (.IPadMini3, "iPad mini 3")
        case "iPad5,1", "iPad5,2":
            return (.IPadMini4, "iPad mini 4")
        case "iPad11,1", "iPad11,2":
            return (.IPadMini_5th, "iPad mini (5th generation)")
        case "iPad14,1", "iPad14,2":
            return (.IPadMini_6th, "iPad mini (6th generation)")
            
            
            // MARK: - iPhone
        case"iPhone1,1":
            return (.IPhone, "iPhone")
        case "iPhone1,2":
            return (.IPhone3G, "iPhone 3G")
        case "iPhone2,1":
            return (.IPhone3GS, "iPhone 3GS")
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":
            return (.IPhone4, "iPhone 4")
        case "iPhone4,1":
            return (.IPhone4S, "iPhone 4S")
        case "iPhone5,1", "iPhone5,2":
            return (.IPhone5, "iPhone 5")
        case "iPhone5,3", "iPhone5,4":
            return (.IPhone5C, "iPhone 5c")
        case "iPhone6,1", "iPhone6,2":
            return (.IPhone5S, "iPhone 5s")
        case "iPhone7,2":
            return (.IPhone6, "iPhone 6")
        case "iPhone7,1":
            return (.IPhone6Plus, "iPhone 6 Plus")
        case "iPhone8,1":
            return (.IPhone6S, "iPhone 6s")
        case "iPhone8,2":
            return (.IPhone6SPlus, "iPhone 6s Plus")
        case "iPhone8,4":
            return (.IPhoneSE_1st, "iPhone SE (1st generation)")
        case "iPhone9,1", "iPhone9,3":
            return (.IPhone7, "iPhone 7")
        case "iPhone9,2", "iPhone9,4":
            return (.IPhone7Plus, "iPhone 7 Plus")
        case "iPhone10,1", "iPhone10,4":
            return (.IPhone8, "iPhone 8")
        case "iPhone10,2", "iPhone10,5":
            return (.IPhone8Plus, "iPhone 8 Plus")
        case "iPhone10,3", "iPhone10,6":
            return (.IPhoneX, "iPhone X")
        case "iPhone11,8":
            return (.IPhoneXR, "iPhone XR")
        case "iPhone11,2":
            return (.IPhoneXS, "iPhone XS")
        case "iPhone11,6", "iPhone11,4":
            return (.IPhoneXSMax, "iPhone XS Max")
        case "iPhone12,1":
            return (.IPhone11, "iPhone 11")
        case "iPhone12,3":
            return (.IPhone11Pro, "iPhone 11 Pro")
        case "iPhone12,5":
            return (.IPhone11ProMax, "iPhone 11 Pro Max")
        case "iPhone12,8":
            return (.IPhoneSE_2nd, "iPhone SE (2nd generation)")
        case "iPhone13,1":
            return (.IPhone12mini, "iPhone 12 mini")
        case "iPhone13,2":
            return (.IPhone12, "iPhone 12")
        case "iPhone13,3":
            return (.IPhone12Pro, "iPhone 12 Pro")
        case "iPhone13,4":
            return (.IPhone12ProMax, "iPhone 12 Pro Max")
        case "iPhone14,4":
            return (.IPhone13mini, "iPhone 13 mini")
        case "iPhone14,5":
            return (.IPhone13, "iPhone 13")
        case "iPhone14,2":
            return (.IPhone13Pro, "iPhone 13 Pro")
        case "iPhone14,3":
            return (.IPhone13ProMax, "iPhone 13 Pro Max")
        case "iPhone14,6":
            return (.IPhoneSE_3nd, "iPhone SE (3rd generation)")
        case "iPhone14,7":
            return (.IPhone14, "iPhone 14")
        case "iPhone14,8":
            return (.IPhone14Plus, "iPhone 14 Plus")
        case "iPhone15,2":
            return (.IPhone14Pro, "iPhone 14 Pro")
        case "iPhone15,3":
            return (.IPhone14ProMax, "iPhone 14 Pro Max")
            
            
            // MARK: - iPod touch
        case"iPod1,1":
            return (.IPodTouch, "iPod touch")
        case "iPod2,1":
            return (.IPodTouch_2nd, "iPod touch (2nd generation)")
        case "iPod3,1":
            return (.IPodTouch_3rd, "iPod touch (3rd generation)")
        case "iPod4,1":
            return (.IPodTouch_4th, "iPod touch (4th generation)")
        case "iPod5,1":
            return (.IPodTouch_5th, "iPod touch (5th generation)")
        case "iPod7,1":
            return (.IPodTouch_6th, "iPod touch (6th generation)")
        case "iPod9,1":
            return (.IPodTouch_7th, "iPod touch (7th generation)")
            
            
            // MARK: - Simulator
        case "i386", "x86_64":
            return (.Simulator, "Simulator")
            
        default:
            return (.Unknown, "Unknown")
        }
    }
}

extension GODeviceModels {
    
    private func identifier() -> String {
        
        var systemInfo = utsname()
        uname(&systemInfo)
        
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {return identifier}
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        return identifier
    }
}
