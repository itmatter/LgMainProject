#
# Be sure to run `pod lib lint LgUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LgUIKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LgUIKit.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
                       
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liguang' => '445948630@qq.com' }

  
  # 主要控制仓库来源
  s.source = { :path => '.' }
  s.ios.deployment_target = '8.0'
  s.source_files = 'LgUIKit/**/*'
  s.dependency "LgPublic"
  s.dependency 'BeeHive'

  
end
