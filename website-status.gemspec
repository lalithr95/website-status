# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'website/status/version'

Gem::Specification.new do |spec|
  spec.name          = "website-status"
  spec.version       = Website::Status::VERSION
  spec.authors       = ["Lalith"]
  spec.email         = ["lalithr95@gmail.com"]

  spec.summary       = %q{Ruby gem to check the status of website up or down}
  spec.description   = %q{A ruby gem which checks whether website is up or down based on the delay}
  spec.homepage      = "https://github.com/lalithr95/website-status"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", '~> 0'
end
