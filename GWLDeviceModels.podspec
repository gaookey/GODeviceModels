Pod::Spec.new do |spec|

  spec.name                = "GWLDeviceModels"
  spec.version             = "1.0.0"
  spec.summary             = "iOS 设备型号判断"
  spec.homepage            = "https://mouos.com"
  spec.license             = "MIT"
  spec.author              = { "高文立" => "gao.wenli@foxmail.com" }
  spec.platform            = :ios, "10.0"
  spec.source              = { :git => "https://github.com/mouos/GWLDeviceModels.git", :tag => "#{spec.version}" }
  spec.source_files        = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files       = "Classes/Exclude"
  spec.public_header_files = "Classes/**/*.h"

end