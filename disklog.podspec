Pod::Spec.new do |s|
  s.name         = “disklog”
  s.version      = “0.0.1”
  s.summary      = "disklog"
  s.homepage     = "https://github.com/ChenZhike/disklog_ios"
  s.license      = "MIT"
  s.author             = { “keke” => “568434648@qq.com" }
  s.ios.deployment_target = “10.0”
  s.source       = { :git => "https://github.com/ChenZhike/disklog_ios.git", :tag => "#{s.version}" }
  s.source_files  = “DiskLog/source/**/*.{h,m}”
end
