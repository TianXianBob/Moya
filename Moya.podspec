Pod::Spec.new do |s|
  s.name         = "Moya"
  s.version      = "13.0.9"
  s.summary      = "Network abstraction layer written in Swift"
  s.description  = <<-EOS
  Moya abstracts network commands using Swift Generics to provide developers
  with more compile-time confidence.

  ReactiveSwift and RxSwift extensions exist as well. Instructions for installation
  are in [the README](https://github.com/Moya/Moya).
  EOS
  s.homepage     = "https://github.com/Moya/Moya"
  s.license      = { :type => "MIT", :file => "License.md" }
  s.author             = { "Ash Furrow" => "ash@ashfurrow.com" }
  s.social_media_url   = "http://twitter.com/ashfurrow"
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.source       = { :git => "https://github.com/TianXianBob/Moya.git", :tag => s.version }
  s.default_subspec = "Core"
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.4.0'  

  s.subspec "Core" do |ss|
    ss.source_files  = "Sources/Moya/", "Sources/Moya/Plugins/"
    ss.dependency 'Alamofire_bob', "~> 4.9.4"
    ss.dependency "Result", "~> 4.1"
    ss.framework  = "Foundation"
  end

  s.subspec "ReactiveSwift" do |ss|
    ss.source_files = "Sources/ReactiveMoya/"
    ss.dependency "Moya/Core"
    ss.dependency "ReactiveSwift", "~> 5.0"
  end

  s.subspec "RxSwift" do |ss|
    ss.source_files = "Sources/RxMoya/"
    ss.dependency "Moya/Core"
    ss.dependency "RxSwift", "~> 4.0"
  end
end
