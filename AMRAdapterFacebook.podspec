Pod::Spec.new do |s|
  s.name             = 'AMRAdapterFacebook'
  s.version          = '6.15.0.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Facebook Audience Network adapter for AMR SDK.'
  s.description      = 'AMR Facebook Audience Network adapter allows publishers to mediate Facebook Audience Network banner, native, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-FACEBOOK.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '12.0'
    s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterFacebook/Libs/AMRAdapterFacebook.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.25'
  s.dependency 'FBAudienceNetwork', '6.15.0'
end
