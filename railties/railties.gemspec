version = File.read(File.expand_path("../../RAILS_VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'railties'
  s.version     = version
  s.summary     = 'Tools for creating, working with, and running Rails applications.'
  s.description = 'Rails internals: application bootup, plugins, generators, and rake tasks.'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'David Heinemeier Hansson'
  s.email             = 'david@loudthinking.com'
  s.homepage          = 'http://www.rubyonrails.org'

  s.files              = Dir['CHANGELOG.md', 'README.rdoc', 'bin/**/*', 'guides/**/*', 'lib/**/{*,.[a-z]*}']
  s.require_path       = 'lib'

  s.bindir             = 'bin'
  s.executables        = []

  s.rdoc_options << '--exclude' << '.'

  s.add_dependency('rake',          '>= 0.8.7')
  s.add_dependency('thor',          '~> 0.14.6')
  s.add_dependency('rack-ssl',      '~> 1.3.2')
  s.add_dependency('rdoc',          '~> 3.4')
  s.add_dependency('activesupport', version)
  s.add_dependency('actionpack',    version)
end
