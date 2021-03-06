# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kimonolabs/version'

Gem::Specification.new do |spec|
  spec.name          = "kimonolabs"
  spec.version       = Kimonolabs::VERSION
  spec.authors       = ["goldenson"]
  spec.email         = ["orefice.maxime@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{A ruby library for https://www.kimonolabs.com/.}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/Goldenson/kimonolabs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "httparty"
end
