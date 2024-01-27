lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'erbx/version'

Gem::Specification.new do |s|
  s.name        = 'erbx'
  s.version     = ERBX::VERSION
  s.summary     = 'ERB Extra'
  s.description = 'Extended ERB with prettier tags'
  s.authors     = ['Danny Ben Shitrit']
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.homepage    = 'https://github.com/dannyben/erbx'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.0.0'
  s.metadata['rubygems_mfa_required'] = 'true'
end
