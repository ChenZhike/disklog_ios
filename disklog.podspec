
Pod::Spec.new do |spec|
  spec.name         = 'disklog_ios'
  spec.version      = '0.0.6'
  spec.license = { :type => 'MIT', :text => <<-LICENSE
                   Copyright 2019
                  Use Permission is granted to the author and downloaders,but the author not.
                 LICENSE
               }
  spec.homepage     = 'https://github.com/ChenZhike/disklog_ios'
  spec.authors      = { 'czk' => 'a62396@126.com' }
  spec.summary      = 'quick add log in iPhones'
  spec.source       = { :git => 'https://github.com/ChenZhike/disklog_ios.git', :tag => '0.0.6' }
  spec.source_files = 'disklog_ios/**/*.{h,m}'
  spec.framework    = 'SystemConfiguration'
  spec.ios.deployment_target  = '10.0'
end