# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise_expireable/version'

Gem::Specification.new do |spec|
  spec.name          = "devise_expireable"
  spec.version       = DeviseExpireable::VERSION
  spec.authors       = ["Dmitriy Mokrushin"]
  spec.email         = ["dimmokr@gmail.com"]
  spec.description   = %q{Devise expireable module}
  spec.summary       = <<-EOF
    ### Features ###
    * log out user if remember was expired
  EOF
  spec.homepage      = "https://github.com/HoJSim/devise_expireable"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", ">= 3.2.14"
  spec.add_runtime_dependency "devise"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
