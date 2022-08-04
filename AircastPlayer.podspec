#
#  Be sure to run `pod spec lint AircastPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "AircastPlayer"
  spec.version      = "0.0.1"
  spec.summary      = "AircastPlayer SDK"
  spec.description  = <<-DESC
Using this SDK users can implement Aircast Core player into ther applications.
                   DESC

  spec.homepage     = "https://www.aircast.tech"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Milad" => "milad.heidari@me.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "13.0"
  spec.source       = { :http => "https://www.dropbox.com/s/l9kbgxihwc7hz9q/AircastPlayer.zip?dl=1" }
  #spec.frameworks = "AircastPlayer"
  #spec.ios.vendored_frameworks = "AircastPlayer.framework"

  spec.preserve_paths = "AircastPlayer.framework/*"

   spec.xcconfig = {
        'FRAMEWORK_SEARCH_PATH[sdk=iphoneos*]' => '$(inherited) "$(PODS_ROOT)/AircastPlayer.framework"',
        'OTHERCFLAGS[sdk=iphoneos*]' => '$(inherited) -iframework "$(PODS_ROOT)/AircastPlayer.framework"',
        'OTHER_LDFLAGS[sdk=iphoneos*]' => '$(inherited) -framework AircastPlayer.framework'
    }

end
