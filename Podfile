# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'iooker' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'Alamofire'
  pod 'MJRefresh'
  pod 'Starscream'
  pod 'SocketRocket'
  pod 'SwiftyStoreKit'
  pod 'SKPhotoBrowser'
  pod 'IQKeyboardManager'
  pod 'SAMKeychain'
  pod "YBImageBrowser"
  pod 'YYImage', :git => 'https://github.com/QiuYeHong90/YYImage.git'
  pod 'HandyJSON'
  pod 'YYWebImage'
  pod 'ObjectMapper'
  pod 'SnapKit'
  pod 'ZKProgressHUD'
  pod 'SDWebImage'
  pod 'SVProgressHUD'
  pod 'AlamofireImage'
  pod 'SwiftKeychainWrapper'
  pod "YBPopupMenu"

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
        end
    end
end
