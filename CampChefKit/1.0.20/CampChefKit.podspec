#
# Be sure to run `pod lib lint CampChefKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CampChefKit'
  s.version          = '1.0.20'
  s.summary          = 'Camp Chef Controller SDK'
  s.swift_version    = '5.7'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Library that aids in management of bluetooth / websocket connection to Camp Chef grill controller.'

  s.homepage         = 'https://github.com/campchef/connect-v4'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shanelk' => 'shane@meosphere.com' }
  s.source           = { :git => 'git@github.com:campchef/connect-v4.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.source_files = 'CampChefKit/Classes/**/*'
  
  s.dependency 'RxBluetoothKit'
  s.dependency 'RxSwiftPlus', '1.0.8'
  s.dependency 'KhrysalisRuntime'
  s.dependency 'LightningServer', '1.0.0'
end
