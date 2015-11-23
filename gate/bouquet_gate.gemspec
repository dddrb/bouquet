$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bouquet/gate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bouquet_gate"
  s.version     = Bouquet::Gate::VERSION
  s.authors     = ["ogom"]
  s.email       = ["ogom@outlook.com"]
  s.homepage    = "https://github.com/dddrb/bouquet"
  s.summary     = "Summary of BouquetGate."
  s.description = "Description of BouquetGate."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "bouquet_core"
  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
