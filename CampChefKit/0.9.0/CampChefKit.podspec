#
# Be sure to run `pod lib lint CampChefKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CampChefKit'
  s.version          = '0.9.0'
  s.summary          = 'A short description of CampChefKit.'

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
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'CampChefKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CampChefKit' => ['CampChefKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'RxBluetoothKit'
  s.dependency 'RxSwiftPlus/Http'
  s.dependency 'RxSwiftPlus/Bluetooth'
  s.dependency 'KhrysalisRuntime'
  s.dependency 'LightningServer'
end
