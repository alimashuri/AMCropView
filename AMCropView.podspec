#
#  Be sure to run `pod spec lint AMCropView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "AMCropView"
  s.version      = "0.0.1"
  s.summary      = "A short description of AMCropView."
  s.description  = <<-DESC
			ImageView Cropper for replacement iOS image crop
                   DESC
  s.homepage     = "https://alimashuri.id"
  s.license      = "MIT"
  s.author             = { "Ali Mashuri" => "ali@mashuri.web.id" }
  s.social_media_url   = "http://twitter.com/alimashuri"

  s.platform     = :ios, "8.0"
  s.source       = { :git => "http://github.com/alimashuri/AMCropView.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.framework  = "ImageIO"
  # s.dependency "JSONKit", "~> 1.4"
end
