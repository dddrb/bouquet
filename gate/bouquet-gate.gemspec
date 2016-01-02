$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bouquet/gate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bouquet-gate"
  s.version     = Bouquet::Gate::VERSION
  s.authors     = ["ogom"]
  s.email       = ["ogom@outlook.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Bouquet::Gate."
  s.description = "TODO: Description of Bouquet::Gate."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta1", "< 5.1"

  s.add_development_dependency "sqlite3"
end
