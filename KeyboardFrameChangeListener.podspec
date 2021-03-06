Pod::Spec.new do |s|
  s.name                  = 'KeyboardFrameChangeListener'
  s.version               = '1.0.5'
  s.summary               = 'Notifies you when on-screen keyboard changes its frame'
  s.homepage              = 'https://github.com/darrarski/KeyboardFrameChangeListener'
  s.author                = { 'Dariusz Rybicki' => 'darrarski@gmail.com' }
  s.social_media_url      = 'https://twitter.com/darrarski'
  s.license               = { :type => 'MIT', 
                              :file => 'LICENSE' }
  s.source                = { :git => 'https://github.com/darrarski/KeyboardFrameChangeListener.git', 
                              :tag => "v#{s.version}" }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.swift_version         = '4.2'
  s.source_files          = 'Sources'
  s.requires_arc          = true
  s.frameworks            = 'UIKit'
end
