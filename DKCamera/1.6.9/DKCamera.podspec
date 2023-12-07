Pod::Spec.new do |s|
  s.name          = "DKCamera"
  s.version       = "1.6.9"
  s.summary       = "A light weight & simple & easy camera for iOS by Swift."
  s.homepage      = "https://github.com/lightningkite/DKCamera"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Bannings" => "zhangao0086@gmail.com" }
  s.platform      = :ios, "12.0"
  s.source        = { :git => "https://github.com/lightningkite/DKCamera.git",
                     :tag => s.version.to_s }
  s.source_files  = "DKCamera/DKCamera.swift", "DKCamera/DKCameraResource.swift", "DKCamera/DKCameraLocationManager.swift"
  s.resource      = "DKCamera/DKCameraResource.bundle"
  s.frameworks    = "Foundation", "UIKit", "AVFoundation", "CoreMotion"
  s.requires_arc  = true

  s.swift_versions = '4.2', '5'
  
end
