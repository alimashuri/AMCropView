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
  s.summary      = "A replacement for native imagepicker crop Edit"
  s.description  = <<-DESC
			A replacement for native imagepicker crop/Edit  
                 DESC
  s.homepage     = "https://github.com/alimashuri/AMCropView"
  s.license      = {:type => 'MIT', :file => 'LICENSE' }
#  s.license	= "MIT" 
  s.author             = { "Ali Mashuri" => "ali@mashuri.web.id" }
  s.social_media_url   = "http://twitter.com/alimashuri"

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/alimashuri/AMCropView.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.framework  = "ImageIO"
  s.requires_arc = true
end
