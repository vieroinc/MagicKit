Pod::Spec.new do |s|
  s.name     = 'MagicKit'
  s.module_name = 'MagicKit'
  s.version  = '0.0.6'
  s.license  = 'MIT'
  s.summary  = 'Fork of MagicKit with fixes for errors and warnings present in later versions of Clang and updated libmagic sources'
  s.homepage = 'https://github.com/wyllys66/MagicKit'
  s.author   = { "Wyllys" => "wyllys@gmail.com" }
  s.source   = { :git => 'https://github.com/wyllys66/MagicKit.git',
                 :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.13'
  s.resource = 'magic.mgc'  
  s.source_files = 'libmagic/*.{h,c}', '*.{h,m}'
  s.exclude_files = "libmagic/strlcpy.c","libmagic/strlcat.c"
  s.public_header_files = 'MagicKit.h','GEMagicKit.h','GEMagicResult.h'

  s.ios.frameworks   = 'Foundation', 'MobileCoreServices'
  s.osx.frameworks   = 'Foundation', 'CoreServices'

  s.library = 'z'

  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) HAVE_CONFIG_H=1' }
end
