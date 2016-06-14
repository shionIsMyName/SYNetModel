Pod::Spec.new do |s|
  s.name             = "SYNetModel"
  s.version          = "1.0.0"
  s.summary          = "A baseModel combining internet request and mapping model/一个包含网络请求和模型映射的基类"
  s.description      = <<-DESC
                       This third-party library could makes your controllers more readable by moving your requests from controllers to models,and put data you requested into models./这个第三方库可以将网络请求迁移至模型层,并将请求到的数据封装进模型,给控制器减肥,让控制器代码逻辑更易读，更易于维护。
 			DESC
  s.homepage         = "https://github.com/shionIsMyName/SYNetModel"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "施勇" => "619023485@qq.com/shionIsMyName@gmail.com" }
  s.source           = { :git => "https://github.com/shionIsMyName/SYNetModel.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/NAME'

  s.platform     = :ios, '7.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'SYNetModel/*'
  # s.resources = 'Assets'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit','AFNetworking','MJExtension'

end
