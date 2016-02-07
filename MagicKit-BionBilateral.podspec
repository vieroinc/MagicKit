Pod::Spec.new do |s|
  s.name     = 'MagicKit-BionBilateral'
  s.module_name = 'MagicKit'
  s.version  = '0.0.3'
  s.license  = 'MIT'
  s.summary  = 'Fork of MagicKit with fixes for errors and warnings present in later versions of Clang'
  s.homepage = 'https://github.com/BionBilateral/MagicKit'
  s.author   = { 'William Towe' => 'will@bionbilateral.com' }
  s.source   = { :git => 'https://github.com/BionBilateral/MagicKit.git',
                 :tag => '0.0.3' }

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.resource = 'magic.mgc'  
  s.source_files = 'libmagic/*.{h,c}', '*.{h,m}'
  s.exclude_files = "libmagic/strlcpy.c","libmagic/strlcat.c"
  s.requires_arc = false

  s.ios.frameworks   = 'Foundation', 'MobileCoreServices'
  s.osx.frameworks   = 'Foundation', 'CoreServices'

  s.library = 'z'

  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) HAVE_CONFIG_H=1' }
end
