#
#  Be sure to run `pod spec lint AircastPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "AircastPlayer"
  spec.version      = "0.0.6"
  spec.summary      = "AircastPlayer SDK"
  spec.description  = <<-DESC
Using this SDK users can implement Aircast Core player into ther applications.
                   DESC

  spec.homepage     = "https://master.d3qz53mx6rarae.amplifyapp.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Milad" => "milad.heidari@me.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "13.0"
  spec.source       = { :http => "https://aircast-artifact.s3.us-west-1.amazonaws.com/AircastPlayer.zip" }
  
  spec.ios.vendored_frameworks = 'AircastPlayer.xcframework', 'Libavcodec.xcframework', 'Libavfilter.xcframework', 'Libavformat.xcframework', 'Libavutil.xcframework', 'Libcrypto.xcframework', 'Libssl.xcframework', 'Libsrt.xcframework', 'Libswresample.xcframework', 'Libswscale.xcframework'
      
  spec.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AircastPlayer"/**',
      'OTHER_LDFLAGS' => '-ObjC -l"c++" -l"bz2" -l"iconv" -l"xml2" -l"z" -framework "AircastPlayer" -framework "Libavcodec" -framework "Libavfilter" -framework "Libavformat" -framework "Libavutil" -framework "Libcrypto" -framework "Libssl" -framework "Libsrt" -framework "Libswresample" -framework "Libswscale" -framework "VideoToolbox" -weak_framework "MetalKit"'
  }

end
