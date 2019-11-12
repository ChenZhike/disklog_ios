
Pod::Spec.new do |spec|
  spec.name         = 'disklog'
  spec.version      = '0.0.1'
  spec.license      = { :type => ‘MIT’ }
  spec.homepage     = 'https://github.com/ChenZhike/disklog_ios'
  spec.authors      = { ‘czk’ => ‘a62396@126.com’ }
  spec.summary      = ‘quick add log in iPhones’
  spec.source       = { :git => 'https://github.com/ChenZhike/disklog_ios.git', :tag => 'v0.0.1' }
  spec.source_files = 'DiskLog.{h,m}'
  spec.framework    = 'SystemConfiguration'
  spec.ios.deployment_target  = ’10.0’
end