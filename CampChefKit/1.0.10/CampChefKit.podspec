#
# Be sure to run `pod lib lint CampChefKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CampChefKit'
  s.version          = '1.0.10'
  s.summary          = 'A short description of CampChefKit.'
  s.swift_version    = '5.7'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/campchef/connect-v4'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shanelk' => 'shane@meosphere.com' }
  s.source           = { :git => 'git@github.com:campchef/connect-v4.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'CampChefKit/Classes/**/*'
  
  s.dependency 'RxBluetoothKit'
  s.dependency 'RxSwiftPlus'
  # s.dependency 'RxSwiftPlus/Http'
  # s.dependency 'RxSwiftPlus/Bluetooth'
  s.dependency 'KhrysalisRuntime'
  s.dependency 'LightningServer'
end
