$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bouquet/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bouquet-core"
  s.version     = Bouquet::Core::VERSION
  s.authors     = ["ogom"]
  s.email       = ["ogom@outlook.com"]
  s.homepage    = "https://github.com/dddrb/bouquet"
  s.summary     = "Summary of Bouquet::Core."
  s.description = "Description of Bouquet::Core."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta1", "< 5.1"

  s.add_development_dependency "sqlite3"
end
