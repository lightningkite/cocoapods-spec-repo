Pod::Spec.new do |s|
  s.name             = "RxCocoa"
  s.version          = "6.2.2-LK"
  s.summary          = "RxSwift Cocoa extensions"
  s.description      = <<-DESC
* UI extensions
* NSURL extensions
* KVO extensions
                        DESC
  s.homepage         = "https://github.com/lightningkite/RxSwift"
  s.license          = 'MIT'
  s.author           = { "Krunoslav Zaher" => "krunoslav.zaher@gmail.com" }
  s.source           = { :git => "https://github.com/lightningkite/RxSwift.git", :tag => s.version.to_s }

  s.requires_arc          = true

  
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'


  s.header_dir            = "RxCocoa"
  s.source_files          = 'RxCocoa/**/*.{swift,h,m}', 'Platform/**/*.swift'
  s.exclude_files         = 'RxCocoa/Platform/**/*.swift', 'Platform/AtomicInt.swift'

  s.dependency 'RxSwift', '6.2.2-LK'
  s.dependency 'RxRelay', '6.2.2-LK'

  s.swift_version = '5.1'
end
