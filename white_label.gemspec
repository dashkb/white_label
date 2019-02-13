# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'white_label/version'

Gem::Specification.new do |spec|
  spec.name          = 'white_label'
  spec.version       = WhiteLabel::VERSION
  spec.authors       = ['Kyle Brett']
  spec.email         = ['kyle@kylebrett.com']

  spec.summary       = 'Use one app for multiple businesses'
  spec.description   = 'Tools for running multiple businesses out of a single codebase'
  spec.homepage      = "https://github.com/dashkb/white_label"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
end
