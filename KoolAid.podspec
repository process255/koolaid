Pod::Spec.new do |s|
  s.name         = 'KoolAid'
  s.version      = '0.0.1'
  s.platform     = :ios
  s.summary      = 'Some helpful iOS classes.'
  s.homepage     = 'https://github.com/process255/koolaid'
  s.author       = { 'Sean Dougherty' => 'seancdougherty@gmail.com' }
  s.source       = { :git => 'https://github.com/process255/koolaid.git' }
  s.description  = 'KoolAid makes life taste better while writing iOS apps.'
  s.source_files = 'KoolAid'
  s.frameworks   = 'QuartzCore', 'CoreGraphics', 'MessageUI'
  s.requires_arc = true
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.preserve_paths = 'KoolAid.xcodeproj', 'Resources'
 
end