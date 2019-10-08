require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNNodeMediaClient"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = "MIT"

  s.authors      = { "Mingliang Chen" => "" }
  s.homepage     = "https://github.com/ChazEpps/react-native-nodemediaclient#readme"
  s.platforms    = { :ios => "8.0", :tvos => "9.0" }

  s.source       = { :git => "https://github.com/ChazEpps/react-native-nodemediaclient.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'

  s.dependency 'NodeMediaClient'
  s.requires_arc = true
  s.framework    = 'UIKit'
end
