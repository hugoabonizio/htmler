$:.push File.expand_path("../lib", __FILE__)
require "htmler/version"

Gem::Specification.new do |s|
  s.name        = "htmler"
  s.version     = Htmler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Hugo Abonizio"]
  s.email       = ["hugo_abonizio@hotmail.com"]
  s.homepage    = "https://github.com/hugoabonizio/htmler"
  s.summary     = %q{Rubyst way to write HTML}
  s.description = %q{A Ruby DSL to write HTML}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end