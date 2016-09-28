# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toshi/version'

Gem::Specification.new do |spec|
  spec.name          = "toshi-ruby"
  spec.version       = Toshi::VERSION
  spec.authors       = ["Luis Fernando"]
  spec.email         = ["lfbu.112@gmail.com"]

  spec.summary       = %q{Ruby client for Toshi API}
  spec.description   = %q{Ruby client for Toshi API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency             "httparty", "~> 0.14.0"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
end
