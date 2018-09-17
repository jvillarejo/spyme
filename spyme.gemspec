$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spyme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spyme"
  s.version     = Spyme::VERSION
  s.authors     = ["Juani Villarejo"]
  s.email       = ["contac@jonvillage.com"]
  s.homepage    = "https://github.com/jvillarejo/spyme"
  s.summary     = "A Rails plugin that tracks and store browser geolocation position"
  s.description = "With spyme you can store and access user browser geolocated position and use it whenever you want."
  s.license     = "MIT"

  s.files = Dir["{app,config,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 4.1"

  s.add_development_dependency "sqlite3", "~> 1.3"
end
