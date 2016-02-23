Pod::Spec.new do |spec|

  # Static information
	spec.name                   = 'MoreColors'
	spec.license                = { :type => "MIT", :file => "LICENSE.txt" }
	spec.homepage               = "https://github.com/mccoyLBI/MoreColors"
	spec.authors                = { "Kyle Scholl" => 'appdev@patronusllc.com' }
	spec.social_media_url       = 'https://twitter.com/PatronusLLC'
	spec.summary                = 'MoreColors allows users to add their own custom colors that seamlessly integrate with UIColor. There is also a built in HEX to RGB function.'
	spec.source_files           = 'MoreColors/**/*.{swift}'
	spec.framework              = 'UIKit'
	spec.platform               = :ios
	spec.ios.deployment_target  = '8.0'
	spec.requires_arc           = true

  # Non-static information
	spec.version                = '1.2.0'
	spec.source                 = { :git => 'https://github.com/mccoyLBI/MoreColors.git', :tag => "#{spec.version}" }
end
