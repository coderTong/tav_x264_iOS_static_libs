#
#  Be sure to run `pod spec lint tav_x264_iOS_static_libs.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "tav_x264_iOS_static_libs"
  s.version      = "1.x.x-local"
  s.summary      = "tav_x264_iOS_static_libs."

  s.description  = "tav_x264_iOS_static_libs."

  s.homepage     = "https://github.com/coderTong/tav_x264_iOS_static_libs"
  
  s.license      = "Commercial"
  
  s.author       = { "wutong" => "codewutong@foxmail.com" }
  
  s.source       = { :git => "https://github.com/coderTong/tav_x264_iOS_static_libs.git", :tag => "#{s.version}" }

  s.platform     = :ios, "9.0"

  s.requires_arc = true

  s.frameworks   = "UIKit", "AVFoundation", "CoreTelephony", "CoreMedia",  "AVFoundation", "AudioToolbox", "Security", "VideoToolbox", "SystemConfiguration",  "CoreVideo", "CoreGraphics", "CFNetwork"
  

  s.default_subspec = 'tav_x264'
  s.subspec 'tav_x264' do |ss|
    ss.source_files        = 'include/**/*.h'
    ss.public_header_files = 'include/**/*.h'
    ss.header_mappings_dir = 'include'
    ss.vendored_libraries  = 'lib/*.a'
    ss.libraries = 'x264', 'iconv', 'z', 'bz2'
  end


end
