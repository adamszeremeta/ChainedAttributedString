Pod::Spec.new do |s|

  s.name         = 'ChainedAttributedString'
  s.version      = '2.0.0'
  s.summary      = 'Easy and convenient way to create attributed strings in Swift'

  s.homepage     = 'https://github.com/adamszeremeta/ChainedAttributedString'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { 'Adam Szeremeta' => 'adamszeremeta@gmail.com' }

  s.source       = { :git => 'https://github.com/adamszeremeta/ChainedAttributedString.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'ChainedAttributedString/*.swift'

end