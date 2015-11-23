# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bouquet/version'

Gem::Specification.new do |spec|
  spec.name          = "bouquet"
  spec.version       = Bouquet::VERSION
  spec.authors       = ["ogom"]
  spec.email         = ["ogom@outlook.com"]

  spec.summary       = %q{bouquet summary.}
  spec.description   = %q{bouquet description.}
  spec.homepage      = "https://github.com/dddrb/bouquet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bouquet_core"
  spec.add_dependency "bouquet_gate"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
