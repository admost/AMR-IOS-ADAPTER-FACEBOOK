Pod::Spec.new do |s|
  s.name             = 'AMRAdapterFacebook'
  s.version          = '6.9.0.3'
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
  s.ios.deployment_target = '9.0'
  s.vendored_libraries = 'AMRAdapterFacebook/Libs/libAMRAdapterFacebook.a'
  s.dependency 'AMRSDK', '~> 1.5.4'
  s.dependency 'FBAudienceNetwork', '6.9.0'
end
