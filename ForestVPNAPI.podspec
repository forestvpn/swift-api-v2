Pod::Spec.new do |s|
  s.name = 'ForestVPNAPI'
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'
  s.version = '2.0.0'
  s.source = { :git => 'https://github.com/forestvpn/swift-api-v2.git' }
  s.authors = 'Forest VPN support@forestvpn.com'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://forestvpn.com/'
  s.summary = 'ForestVPNAPI Swift SDK'
  s.description = 'Forest VPN API Client: manage VPN profiles and more...'
  s.documentation_url = 'https://forestvpn.com/api/docs/'
  s.source_files = 'ForestVPNAPIClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
  s.dependency 'Alamofire', '~> 5.4.3'
end
