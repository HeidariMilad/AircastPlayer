#
#  Be sure to run `pod spec lint AircastPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "AircastPlayer"
  spec.version      = "0.0.4"
  spec.summary      = "AircastPlayer SDK"
  spec.description  = <<-DESC
Using this SDK users can implement Aircast Core player into ther applications.
                   DESC

  spec.homepage     = "https://www.aircast.tech"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Milad" => "milad.heidari@me.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "13.0"
  spec.source       = { :http => "https://aircast-artifact.s3.us-west-1.amazonaws.com/AircastPlayer.zip" }
  spec.frameworks = "AircastPlayer"
  spec.ios.vendored_frameworks = "AircastPlayer.xcframework"
  spec.frameworks = "Libavcodec", "Libavfilter", "Libavformat", "Libavutil", "Libcrypto", "Libssl", "Libsrt", "Libswresample", "Libswscale"
  
  spec.xcconfig = {
      'FRAMEWORK_SEARCH_PATH' => '$(inherited) "$(PODS_ROOT)/AircastPlayer.xcframework"
  }
  
end
