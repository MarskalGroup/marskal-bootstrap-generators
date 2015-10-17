# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "marskal/bootstrap/generators/version"

Gem::Specification.new do |spec|
  spec.name          = "marskal-bootstrap-generators"
  spec.version       = Marskal::Bootstrap::Generators::VERSION
  spec.authors       = ["Mike Urban"]
  spec.email         = ["mike@marskalgroup.com"]
  spec.summary       = %q{marskal-bootstrap-generators provides Twitter Bootstrap generators for Rails 4}
  spec.description   = %q{marskal-bootstrap-generators provides Twitter Bootstrap generators for Rails 4 Checkout http://getbootstrap.com.}
  spec.homepage      = "https://github.com/MarskalGroup/marskal-bootstrap-generators"
  spec.license       = "MIT"

  spec.rubyforge_project = "marskal-bootstrap-generators"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", '~> 0.4'

  spec.add_dependency "railties", "~> 4.0"
  spec.add_dependency "bootstrap-sass", "~> 3.3"
  spec.add_dependency 'sass-rails', '~> 5.0'
end
