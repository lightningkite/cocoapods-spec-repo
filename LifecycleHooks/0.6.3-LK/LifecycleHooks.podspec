
Pod::Spec.new do |s|

  s.name             = "LifecycleHooks"
  s.version          = "0.6.3-LK"
  s.summary          = "Inject custom code into views and view controllers in response to lifecycle events."

  s.description      = <<-DESC
                        LifecycleHooks allows custom code to be injected into views and
                        view controllers in response to lifecycle events
                       DESC

  s.homepage         = "https://github.com/lightningkite/LifecycleHooks"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'johnpatrickmorgan' => 'johnpatrickmorganuk@gmail.com' }
  s.source           = { :git => 'https://github.com/lightningkite/LifecycleHooks.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jpmmusic'

  s.platform     = :ios, '12.0'
  s.requires_arc = true
  s.swift_version = '5.0'

  s.source_files = 'Sources/**/*'

end
