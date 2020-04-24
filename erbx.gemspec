lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'erbx/version'

Gem::Specification.new do |s|
  s.name        = 'erbx'
  s.version     = ERBX::VERSION
  s.date        = Date.today.to_s
  s.summary     = "ERB Extra"
  s.description = "Extended ERB with prettier tags"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.homepage    = 'https://github.com/dannyben/erbx'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.4.0"
end
