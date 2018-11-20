
Pod::Spec.new do |s|

  s.name         = "CLSlideView"
  s.version      = "1.0.0"
  s.summary      = "半小时集成多个模块的新闻列表, 类似于今日头条、凤凰新闻等"
  s.description  = <<-DESC
展示的cell只有一种，适合文章之类的新闻展示，如果需要开发类似网易、凤凰新闻UII，请使用此控件封装自定义创建 https://github.com/rayonchen/CLSlidePageView_Simple
                   DESC

  s.homepage     = "https://github.com/rayonchen/CLSlideView"
  s.license     = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "chenglei" => "chenglei@creditzx.com" }
  s.platform     = :ios, "8.0"

  s.source      = { :git => 'https://github.com/rayonchen/CLSlideView.git',:tag => s.version }

  s.source_files  = "CLSlideViewDemo/多个tableView的组合", "*"
  s.requires_arc = true

  # 第三方库
    #s.dependency 'ReactiveObjC'
    #s.dependency 'AFNetworking'
    #s.dependency 'PPNetworkHelper','~>0.8.0'
    #s.dependency 'MBProgressHUD'
    #s.dependency 'SDWebImage'
    #s.dependency 'MJRefresh'
    #s.dependency 'MJExtension'


end
