platform :ios, '8.0'
source 'https://github.com/CocoaPods/Specs.git'

# Add Application pods here
pod 'AFNetworking'
target :unit_tests, :exclusive => true do
  link_with 'UnitTests'
  
  pod 'Specta',     '~> 1.0'
  pod 'Expecta',     '~> 1.0'
  pod 'KIF',        '~> 3.3'
  pod 'Swizzlean',   '~> 0.2' 
  pod 'OCMockito'
  pod 'OHHTTPStubs'
end
