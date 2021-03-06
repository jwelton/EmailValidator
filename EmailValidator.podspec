Pod::Spec.new do |s|
  s.name         = "EmailValidator"
  s.version      = "0.1"
  s.summary      = "Lightweight email validation without regular expressions"
  s.description  = <<-DESC
    Lightweight email validation for iOS, macOS and tvOS without regular expressions
  DESC
  s.homepage     = "http://github.com/jwelton/EmailValidator"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Jake Welton" => "jwelton122@googlemail.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/jwelton/EmailValidator.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
