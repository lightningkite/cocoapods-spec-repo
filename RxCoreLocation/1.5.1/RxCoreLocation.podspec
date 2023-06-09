Pod::Spec.new do |s|
 s.name = 'RxCoreLocation'
 s.version = '1.5.1'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'RxCoreLocation abstract the Rx behavior for Core Location'
 s.homepage = 'http://github.com/RxSwiftCommunity/RxCoreLocation'
 s.social_media_url = 'https://twitter.com/bobgodwinx'
 s.authors = { "Obi Bob Godwin" => "bobgodwinx@gmail.com" }
 s.source = { :git => "https://github.com/RxSwiftCommunity/RxCoreLocation.git", :tag => s.version.to_s }
 s.ios.deployment_target = '11.0'
 s.requires_arc = true

 s.default_subspec = "Core"
 s.subspec "Core" do |ss|
     ss.source_files  = "Sources/*.swift"
     ss.framework  = "Foundation"
     ss.dependency "RxSwift", "6.2.3-LK"
     ss.dependency "RxCocoa", "6.2.3-LK"
 end

end
