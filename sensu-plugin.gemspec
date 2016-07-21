require File.expand_path(File.dirname(__FILE__)) + '/lib/sensu-plugin'

Gem::Specification.new do |s|
  s.name          = 'sensu-plugin'
  s.version       = Sensu::Plugin::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Decklin Foster', 'Sean Porter']
  s.email         = ['decklin@red-bean.com', 'portertech@gmail.com']
  s.homepage      = 'https://github.com/sensu-plugins/sensu-plugin'
  s.summary       = 'Sensu Plugins'
  s.description   = 'Plugins and helper libraries for Sensu, a monitoring framework'
  s.license       = 'MIT'
  s.has_rdoc      = false
  s.require_paths = ['lib']
  s.files         = Dir['lib/**/*.rb']
  s.test_files    = Dir['test/*.rb']

  s.add_dependency('json',       '<= 2.0.0')
  s.add_dependency('mixlib-cli', '>= 1.5.0')

  s.add_development_dependency 'rubocop',                   '~> 0.40.0'
  s.add_development_dependency 'rspec',                     '~> 3.4'
  s.add_development_dependency 'rake',                      '~> 10.5'
  s.add_development_dependency 'yard',                      '~> 0.8'
end
