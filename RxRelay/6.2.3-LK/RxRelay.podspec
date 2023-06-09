Pod::Spec.new do |s|
  s.name             = "RxRelay"
  s.version          = "6.2.3-LK"
  s.summary          = "Relays for RxSwift - PublishRelay, BehaviorRelay and ReplayRelay"
  s.description      = <<-DESC
Relays for RxSwift - PublishRelay, BehaviorRelay and ReplayRelay

* PublishRelay
* BehaviorRelay
* ReplayRelay
* Binding overloads
                        DESC
                        s.homepage         = "https://github.com/lightningkite/RxSwift"
  s.license          = 'MIT'
  s.author           = { "Krunoslav Zaher" => "krunoslav.zaher@gmail.com" }
  s.source           = { :git => "https://github.com/lightningkite/RxSwift.git", :tag => s.version.to_s }

  s.requires_arc          = true

  s.ios.deployment_target = '9.0'

  s.source_files          = 'RxRelay/**/*.{swift,h,m}'

  s.dependency 'RxSwift', '6.2.3-LK'
  s.swift_version = '5.1'
end
