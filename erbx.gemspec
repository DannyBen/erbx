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

  s.required_ruby_version = '>= 3.2'

  s.add_dependency 'erb', '>= 4.0'

  s.metadata = {
    'bug_tracker_uri'       => 'https://github.com/dannyben/erbx/issues',
    'changelog_uri'         => 'https://github.com/dannyben/erbx/blob/master/CHANGELOG.md',
    'source_code_uri'       => 'https://github.com/dannyben/erbx',
    'rubygems_mfa_required' => 'true',
  }
end
