#
# Be sure to run `pod lib lint DiyalogVCSM.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DiyalogVCSM'
  s.version          = '1.0.0'
  s.summary          = 'DiyalogVCSM iOS SDK for Video Call Support Integration for you app.'

  s.homepage         = 'https://github.com/diyalog-im/DiyalogVCSM'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Diyalog' => 'diyalog-im@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/diyalog-im/DiyalogVCSM.git', :tag => s.version.to_s }
  s.public_header_files = "DiyalogVCSM/DiyalogVCSM.framework/Headers/*.h"
  s.source_files     = "DiyalogVCSM/DiyalogVCSM.framework/Headers/*.h"

  s.ios.deployment_target = '10.0'

  s.prepare_command = <<-CMD
    echo 'fetching DiyalogVCSM.framework'
    curl -OL 'https://diyalog.im/app/pkgs/ios_frameworks/DiyalogVCSM/1.0.0/DiyalogVCSM.zip'
    rm -fr 'DiyalogVCSM.framework'
    echo 'unzipping DiyalogVCSM.framework'
    unzip -o -q DiyalogVCSM.zip
    echo 'cleaning files'
    rm DiyalogVCSM.zip
  CMD

  s.preserve_paths = 'DiyalogVCSM'
  s.vendored_frameworks =  'DiyalogVCSM.framework'

  s.xcconfig = {
  "SWIFT_INCLUDE_PATHS" => "${PODS_ROOT}/DiyalogVCSM",
  "FRAMEWORK_SEARCH_PATHS" => "${PODS_ROOT}/DiyalogVCSM",
  "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/DiyalogVCSM"

  }

end
