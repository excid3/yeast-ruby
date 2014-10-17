# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yeast/version'

Gem::Specification.new do |spec|
  spec.name          = "yeast"
  spec.version       = Yeast::VERSION
  spec.authors       = ["Chris Oliver"]
  spec.email         = ["excid3@gmail.com"]
  spec.summary       = %q{Learn from errors in your Rails apps}
  spec.description   = %q{A better error page for your Rails apps that helps you learn from your errors}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "better_errors", "~> 2.0.0"
  spec.add_dependency "binding_of_caller", "~> 0.7.2"
end
