# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notabli/notablisupport/version'

Gem::Specification.new do |spec|
  spec.name          = "notabli-notablisupport"
  spec.version       = Notabli::Notablisupport::VERSION
  spec.authors       = ["Zhao Li"]
  spec.email         = ["zhao.li@startingspark.com"]
  spec.description   = %q{A collection of utility objects to communicate with NotabLiSupport servers.}
  spec.summary       = spec.description
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
