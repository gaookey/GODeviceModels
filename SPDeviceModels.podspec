Pod::Spec.new do |spec|

  spec.name                = "SPDeviceModels"
  spec.version             = "1.0.6"
  spec.summary             = "iOS 设备型号判断"
  spec.homepage            = "https://swiftprimer.com"
  spec.license             = "MIT"
  spec.author              = { "高文立" => "swiftprimer@gmail.com" }
  spec.platform            = :ios, "12.0"
  spec.source              = { :git => "https://github.com/mouos/SPDeviceModels.git", :tag => "#{spec.version}" }
  spec.source_files        = "Classes/**/*"
  spec.swift_version       = '5.0'

end