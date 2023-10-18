#
# Be sure to run `pod lib lint RxSwiftPlus.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

# REQUIRED SOURCE!!
# source "https://github.com/lightningkite/cocoapods-spec-repo.git"
#
# To add this source to cocoa pods run:
# pod repo add 'name' https://github.com/lightningkite/cocoapods-spec-repo.git

Pod::Spec.new do |s|

  s.name             = 'RxSwiftPlus'
  s.version          = '1.0.6'
  s.summary          = 'Use Rx to bind data to your views'

  s.description      = <<-DESC
  This adds the concept of Property to RxSwift, which allows immediate retrieval of the value without subscription, as well as contractually restricting completion and errors.
  Use Rx to bind data to your views.
                       DESC

  s.homepage         = 'https://github.com/lightningkite/RxSwiftPlus'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Joseph' => 'joseph@lightningkite.com' }
  s.source           = { :git => 'https://github.com/lightningkite/RxSwiftPlus.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.swift_version = "5.0"

  s.source_files = 'RxSwiftPlus/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RxSwiftPlus' => ['RxSwiftPlus/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.subspec 'Core' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/Core"
    sub.dependency 'RxSwift', '6.2.4'
    sub.dependency 'RxCocoa', '6.2.4'
  end
  s.subspec 'Http' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/Http"
    sub.dependency "RxSwiftPlus/Core"
    sub.dependency "RxSwiftPlus/Resources"
    sub.dependency 'Starscream'
  end
  s.subspec 'Resources' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/Resources"
    sub.dependency "RxSwiftPlus/Core"
    sub.dependency "RxSwiftPlus/Bindings"
  end
  s.subspec 'Bindings' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/Bindings"
    sub.dependency "RxSwiftPlus/Core"
    sub.dependency "IBPCollectionViewCompositionalLayout"
    sub.dependency 'LifecycleHooks'
  end
  s.subspec 'BindingsCosmo' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/BindingsCosmo"
    sub.dependency "RxSwiftPlus/Bindings"
    sub.dependency "Cosmos"
  end
  s.subspec 'BindingsXmlToXibRuntime' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/BindingsXmlToXibRuntime"
    sub.dependency "RxSwiftPlus/Bindings"
    sub.dependency "XmlToXibRuntime"
  end
  s.subspec 'BindingsXmlToXibRuntimeKhrysalis' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/BindingsXmlToXibRuntimeKhrysalis"
    sub.dependency "RxSwiftPlus/BindingsXmlToXibRuntime"
    sub.dependency "KhrysalisRuntime"
  end
  s.subspec 'BindingsSearchTextField' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/BindingsSearchTextField"
    sub.dependency "RxSwiftPlus/Bindings"
    sub.dependency "SearchTextField"
  end
  s.subspec 'ViewGenerator' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/ViewGenerator"
    sub.dependency "RxSwiftPlus/Bindings"
    sub.dependency "RxSwiftPlus/Resources"
  end
  s.subspec 'ViewGeneratorCalendar' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/ViewGeneratorCalendar"
    sub.dependency "RxSwiftPlus/ViewGenerator"
  end
  s.subspec 'ViewGeneratorImage' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/ViewGeneratorImage"
    sub.dependency "RxSwiftPlus/ViewGenerator"
    sub.dependency "RxSwiftPlus/Resources"
    sub.dependency "DKImagePickerController/Core"
    sub.dependency "DKImagePickerController/ImageDataManager"
    sub.dependency "DKImagePickerController/Resource"
    sub.dependency "DKImagePickerController/Camera"
  end
  s.subspec 'ViewGeneratorLocation' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/ViewGeneratorLocation"
    sub.dependency "RxSwiftPlus/ViewGenerator"
    sub.dependency "RxCoreLocation", '1.5.2'
  end
  s.subspec 'ViewGeneratorFcm' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/ViewGeneratorFcm"
    sub.dependency "RxSwiftPlus/ViewGenerator"
    sub.dependency "KhrysalisRuntime"
    sub.dependency "Firebase/Messaging"
    sub.dependency "Firebase/Core"
  end
  s.subspec 'Bluetooth' do |sub|
    sub.source_files =  "RxSwiftPlus/Classes/Bluetooth"
    sub.dependency "RxSwiftPlus/ViewGenerator"
    sub.dependency "RxBluetoothKit", '~> 7.0'
  end
end
