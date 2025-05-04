Pod::Spec.new do |s|
  s.name                = 'DeviceIntelligenceIOS'
  s.version             = '0.0.4'
  s.summary             = 'Device Intelligence IOS.'
  s.description         = 'Device Intelligence IOS from Keypaz.'
  s.homepage            = 'https://github.com/keypaz/keypaz-device-intelligence-ios'
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.author              = { 'Widi' => 'widi@keypaz.com' }
  s.source              = { :git => 'https://github.com/keypaz/keypaz-device-intelligence-ios.git', :tag => "#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, '14.0'
  s.swift_versions      = '5.3'
  
  s.dependency 'DeviceKit'
  
  s.source_files        = "DeviceIntelligenceIOSTargets/**/*.swift"
  
  s.vendored_frameworks = "XCFrameworks/#{s.version}/DeviceIntelligenceIOS.xcframework"
  
end
