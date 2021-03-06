#
# Be sure to run `pod lib lint LeeButtonLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LeeButtonLayout'
  s.version          = '0.3.0'
  s.summary          = 'LeeButtonLayout'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  LeeButtonLayout主要用于Button中的文字和图片布局使用
                       DESC

  s.homepage         = 'https://github.com/leeqiangzi/LeeButtonLayout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'leeqiangzi' => 'lizhiqiang17@58.com' }
  s.source           = { :git => 'https://github.com/leeqiangzi/LeeButtonLayout.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  不指定子库，代表将所有子库安装
#  s.source_files = 'LeeButtonLayout/Classes/**/*'

  s.subspec 'Category' do |c|
      c.source_files='LeeButtonLayout/Classes/Category/**/*'
      c.dependency 'SDWebImage'
  end
  
  s.subspec 'Tool' do |t|
      t.source_files='LeeButtonLayout/Classes/Tool/**/*'
      t.dependency 'AFNetworking'
  end
  
  # s.resource_bundles = {
  #   'LeeButtonLayout' => ['LeeButtonLayout/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 3.0.0'
end
