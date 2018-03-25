Pod::Spec.new do |s|

  s.name         = "DLCoreGraphics"
  s.version      = "1.0.0"
  s.summary      = "A cross-platform framework which brings easy to use convenience properties, functions and overloaded operators."

  s.homepage     = "https://github.com/davidlivadaru/DLCoreGraphics"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = "David Livadaru"

  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.12"
  #s.watchos.deployment_target = "3.0"
  s.tvos.deployment_target = "10.0"

  s.source       = { :git => "https://github.com/davidlivadaru/DLCoreGraphics.git", :tag => "#{s.version}" }

  s.source_files  = "Sources/**/*.{h,m,swift}"

  s.dependency "DLAngle"

end
