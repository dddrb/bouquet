$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bouquet/store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bouquet-store"
  s.version     = Bouquet::Store::VERSION
  s.authors     = ["ogom"]
  s.email       = ["ogom@outlook.com"]
  s.homepage    = "https://github.com/dddrb/bouquet"
  s.summary     = "Summary of Bouquet::Store."
  s.description = "Description of Bouquet::Store."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta1", "< 5.1"

  s.add_development_dependency "sqlite3"
end
