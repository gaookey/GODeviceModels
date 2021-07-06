
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
    
    case IPad
    case IPad2
    case IPad_3rd
    case IPad_4th
    case IPad_5th
    case IPad_6th
    case IPad_7th
    case IPad_8th
    
    case IPadPro_inch12_9
    case IPadPro_inch12_9_2nd
    case IPadPro_inch12_9_3rd
    case IPadPro_inch12_9_4th
    
    case IPadPro_inch9_7
    case IPadPro_inch10_5
    
    case IPadPro_inch11
    case IPadPro_inch11_2nd
    
    case IPadAir
    case IPadAir2
    case IPadAir_3rd
    case IPadAir_4th
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
            return (.IPad, "iPad (A1219/A1337)")
        case "iPad2,1":
            return (.IPad2, "iPad 2 (A1395)")
        case "iPad2,2":
            return (.IPad2, "iPad 2 (A1396)")
        case "iPad2,3":
            return (.IPad2, "iPad 2 (A1397)")
        case "iPad2,4":
            return (.IPad2, "iPad 2 (A1395)")
        case "iPad3,1":
            return (.IPad_3rd, "iPad (3rd generation) (A1416)")
        case "iPad3,2":
            return (.IPad_3rd, "iPad (3rd generation) (A1403)")
        case "iPad3,3":
            return (.IPad_3rd, "iPad (3rd generation) (A1430)")
        case "iPad3,4":
            return (.IPad_4th, "iPad (4th generation) (A1458)")
        case "iPad3,5":
            return (.IPad_4th, "iPad (4th generation) (A1459)")
        case "iPad3,6":
            return (.IPad_4th, "iPad (4th generation) (A1460)")
        case "iPad6,11":
            return (.IPad_5th, "iPad (5th generation) (A1822)")
        case "iPad6,12":
            return (.IPad_5th, "iPad (5th generation) (A1823)")
        case "iPad7,5":
            return (.IPad_6th, "iPad (6th generation) (A1893)")
        case "iPad7,6":
            return (.IPad_6th, "iPad (6th generation) (A1954)")
        case "iPad7,11":
            return (.IPad_7th, "iPad (7th generation) (A2197)")
        case "iPad7,12":
            return (.IPad_7th, "iPad (7th generation) (A2198/A2200)")
        case "iPad11,6":
            return (.IPad_8th, "iPad (8th generation) (A2270)")
        case "iPad11,7":
            return (.IPad_8th, "iPad (8th generation) (A2428/A2429/A2430)")
            
            
        // MARK: - iPad Air
        case"iPad4,1":
            return (.IPadAir, "iPad Air (A1474)")
        case "iPad4,2":
            return (.IPadAir, "iPad Air (A1475)")
        case "iPad4,3":
            return (.IPadAir, "iPad Air (A1476)")
        case "iPad5,3":
            return (.IPadAir2, "iPad Air 2 (A1566)")
        case "iPad5,4":
            return (.IPadAir2, "iPad Air 2 (A1567)")
        case "iPad11,3":
            return (.IPadAir_3rd, "iPad Air (3rd generation) (A2152)")
        case "iPad11,4":
            return (.IPadAir_3rd, "iPad Air (3rd generation) (A2123/A2153/A2154)")
        case "iPad13,1":
            return (.IPadAir_4th, "iPad Air (4th generation) (?)")
        case "iPad13,2":
            return (.IPadAir_4th, "iPad Air (4th generation) (A2324/A2072)")
            
            
        // MARK: - iPad Pro
        case"iPad6,7":
            return (.IPadPro_inch12_9, "iPad Pro (12.9-inch) (A1584)")
        case "iPad6,8":
            return (.IPadPro_inch12_9, "iPad Pro (12.9-inch) (A1652)")
        case "iPad6,3":
            return (.IPadPro_inch9_7, "iPad Pro (9.7-inch) (A1673)")
        case "iPad6,4":
            return (.IPadPro_inch9_7, "iPad Pro (9.7-inch) (A1674/A1675)")
        case "iPad7,1":
            return (.IPadPro_inch12_9_2nd, "iPad Pro (12.9-inch) (2nd generation) (A1670)")
        case "iPad7,2":
            return (.IPadPro_inch12_9_2nd, "iPad Pro (12.9-inch) (2nd generation) (A1671/A1821)")
        case "iPad7,3":
            return (.IPadPro_inch10_5, "iPad Pro (10.5-inch) (A1701)")
        case "iPad7,4":
            return (.IPadPro_inch10_5, "iPad Pro (10.5-inch) (A1709)")
        case "iPad8,1", "iPad8,2":
            return (.IPadPro_inch11, "iPad Pro (11-inch) (A1980)")
        case "iPad8,3", "iPad8,4":
            return (.IPadPro_inch11, "iPad Pro (11-inch) (A1934/A1979/A2013)")
        case "iPad8,5", "iPad8,6":
            return (.IPadPro_inch12_9_3rd, "iPad Pro (12.9-inch) (3rd generation) (A1876)")
        case "iPad8,7", "iPad8,8":
            return (.IPadPro_inch12_9_3rd, "iPad Pro (12.9-inch) (3rd generation) (A1895/A1983/A2014)")
        case "iPad8,9":
            return (.IPadPro_inch11_2nd, "iPad Pro (11-inch) (2nd generation) (A2228)")
        case "iPad8,10":
            return (.IPadPro_inch11_2nd, "iPad Pro (11-inch) (2nd generation) (A2068/A2230/A2231)")
        case "iPad8,11":
            return (.IPadPro_inch12_9_4th, "iPad Pro (12.9-inch) (4th generation) (A2229)")
        case "iPad8,12":
            return (.IPadPro_inch12_9_4th, "iPad Pro (12.9-inch) (4th generation) (A2069/A2232/A2233)")
            
            
        // MARK: - iPad mini
        case"iPad2,5":
            return (.IPadMini, "iPad mini (A1432)")
        case "iPad2,6":
            return (.IPadMini, "iPad mini (A1454)")
        case "iPad2,7":
            return (.IPadMini, "iPad mini (A1455)")
        case "iPad4,4":
            return (.IPadMini2, "iPad mini 2 (A1489)")
        case "iPad4,5":
            return (.IPadMini2, "iPad mini 2 (A1490)")
        case "iPad4,6":
            return (.IPadMini2, "iPad mini 2 (A1491)")
        case "iPad4,7":
            return (.IPadMini3, "iPad mini 3 (A1599)")
        case "iPad4,8":
            return (.IPadMini3, "iPad mini 3 (A1600)")
        case "iPad4,9":
            return (.IPadMini3, "iPad mini 3 (A1601)")
        case "iPad5,1":
            return (.IPadMini4, "iPad mini 4 (A1538)")
        case "iPad5,2":
            return (.IPadMini4, "iPad mini 4 (A1550)")
        case "iPad11,1":
            return (.IPadMini_5th, "iPad mini (5th generation) (A2133)")
        case "iPad11,2":
            return (.IPadMini_5th, "iPad mini (5th generation) (A2124/A2125/A2126)")
            
            
        // MARK: - iPhone
        case"iPhone1,1":
            return (.IPhone, "iPhone (A1203)")
        case "iPhone1,2":
            return (.IPhone3G, "iPhone 3G (A1241/A1324)")
        case "iPhone2,1":
            return (.IPhone3GS, "iPhone 3GS (A1303/A1325)")
        case "iPhone3,1", "iPhone3,2":
            return (.IPhone4, "iPhone 4 (A1332)")
        case "iPhone3,3":
            return (.IPhone4, "iPhone 4 (A1349)")
        case "iPhone4,1":
            return (.IPhone4S, "iPhone 4S (A1387/A1431)")
        case "iPhone5,1":
            return (.IPhone5, "iPhone 5 (A1428)")
        case "iPhone5,2":
            return (.IPhone5, "iPhone 5 (A1429/A1442)")
        case "iPhone5,3":
            return (.IPhone5C, "iPhone 5c (A1456/A1532)")
        case "iPhone5,4":
            return (.IPhone5C, "iPhone 5c (A1507/A1516/A1526/A1529)")
        case "iPhone6,1":
            return (.IPhone5S, "iPhone 5s (A1453/A1533)")
        case "iPhone6,2":
            return (.IPhone5S, "iPhone 5s (A1457/A1518/A1528/A1530)")
        case "iPhone7,2":
            return (.IPhone6, "iPhone 6 (A1549/A1586/A1589)")
        case "iPhone7,1":
            return (.IPhone6Plus, "iPhone 6 Plus (A1522/A1524/A1593)")
        case "iPhone8,1":
            return (.IPhone6S, "iPhone 6s (A1633/A1688/A1691/A1700)")
        case "iPhone8,2":
            return (.IPhone6SPlus, "iPhone 6s Plus (A1634/A1687/A1690/A1699)")
        case "iPhone8,4":
            return (.IPhoneSE_1st, "iPhone SE (A1662/A1723/A1724)")
        case "iPhone9,1":
            return (.IPhone7, "iPhone 7 (A1660/A1779/A1780)")
        case "iPhone9,3":
            return (.IPhone7, "iPhone 7 (A1778)")
        case "iPhone9,2":
            return (.IPhone7Plus, "iPhone 7 Plus (A1661/A1785/A1786)")
        case "iPhone9,4":
            return (.IPhone7Plus, "iPhone 7 Plus (A1784)")
        case "iPhone10,1":
            return (.IPhone8, "iPhone 8 (A1863/A1906/A1907)")
        case "iPhone10,4":
            return (.IPhone8, "iPhone 8 (A1905)")
        case "iPhone10,2":
            return (.IPhone8Plus, "iPhone 8 Plus (A1864/A1898/A1899)")
        case "iPhone10,5":
            return (.IPhone8Plus, "iPhone 8 Plus (A1897)")
        case "iPhone10,3":
            return (.IPhoneX, "iPhone X (A1865/A1902)")
        case "iPhone10,6":
            return (.IPhoneX, "iPhone X (A1901)")
        case "iPhone11,8":
            return (.IPhoneXR, "iPhone XR (A1984/A2105/A2106/A2108)")
        case "iPhone11,2":
            return (.IPhoneXS, "iPhone XS (A1920/A2097/A2098/A2100)")
        case "iPhone11,6":
            return (.IPhoneXSMax, "iPhone XS Max (A1921/A2101/A2102/A2104)")
        case "iPhone11,4":
            return (.IPhoneXSMax, "iPhone XS Max (?)")
        case "iPhone12,1":
            return (.IPhone11, "iPhone 11 (A2111/A2221/A2223)")
        case "iPhone12,3":
            return (.IPhone11Pro, "iPhone 11 Pro (A2160/A2215/A2217)")
        case "iPhone12,5":
            return (.IPhone11ProMax, "iPhone 11 Pro Max (A2161/A2220/A2218)")
        case "iPhone12,8":
            return (.IPhoneSE_2nd, "iPhone SE (2nd generation) (A2275/A2296/A2298)")
        case "iPhone13,1":
            return (.IPhone12mini, "iPhone 12 mini (A2176)")
        case "iPhone13,2":
            return (.IPhone12, "iPhone 12 (A2172)")
        case "iPhone13,3":
            return (.IPhone12Pro, "iPhone 12 Pro (A2341)")
        case "iPhone13,4":
            return (.IPhone12ProMax, "iPhone 12 Pro Max (A2342)")
            
            
        // MARK: - iPod touch
        case"iPod1,1":
            return (.IPodTouch, "iPod touch (A1213)")
        case "iPod2,1":
            return (.IPodTouch_2nd, "iPod touch (2nd generation) (A1288/A1319)")
        case "iPod3,1":
            return (.IPodTouch_3rd, "iPod touch (3rd generation) (A1318)")
        case "iPod4,1":
            return (.IPodTouch_4th, "iPod touch (4th generation) (A1367)")
        case "iPod5,1":
            return (.IPodTouch_5th, "iPod touch (5th generation) (A1421/A1509)")
        case "iPod7,1":
            return (.IPodTouch_6th, "iPod touch (6th generation) (A1574)")
        case "iPod9,1":
            return (.IPodTouch_7th, "iPod touch (7th generation) (A2178)")
            
            
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
