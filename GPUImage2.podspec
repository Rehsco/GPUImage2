Pod::Spec.new do |s|
  s.name             = "GPUImage2"
  s.version          = "0.1.0"
  s.license          = "BSD"
  s.summary          = "An open source iOS framework for GPU-based image and video processing."
  s.author           = { "Brad Larson" => "contact@sunsetlakesoftware.com" }
  s.homepage         = "https://github.com/BradLarson/GPUImage2"
  s.source           = { :git => "https://github.com/Rehsco/GPUImage2.git" }

  s.ios.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_SWIFT_FLAGS' => '$(inherited) -DGLES' }
  s.ios.exclude_files = 'framework/Source/Mac/**/*', 'framework/Source/Linux/**/*','framework/Source/Operations/Shaders/ConvertedShaders_GL.swift'

  s.framework = 'OpenGLES'
  s.framework = 'CoreMedia'
  s.framework = 'QuartzCode'
  s.framework = 'AVFoundation'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'framework/Source/**/*.{swift}'

  s.resources           = 'framework/Source/Operations/Shaders/*.{fsh}'

end
