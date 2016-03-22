# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)
require 'ck_run/version'

Gem::Specification.new do |spec|
  spec.name          = 'ck_run'
  spec.version       = CkRun::VERSION
  spec.authors       = ['Morgan Lieberthal']
  spec.email         = ['morgan@jmorgan.org']

  spec.summary       = 'Run LibCheck Specs from Ruby'
  spec.homepage      = 'https://github.com/baberthal/ck_run'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) } # rubocop:disable Metrics/LineLength
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.extensions    = ['ext/ck_run/extconf.rb']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rake-compiler'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'colorize', '~> 0.7'
  spec.add_runtime_dependency 'ruby-progressbar', '~> 1.7'
end
