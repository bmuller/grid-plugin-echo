$:.push File.expand_path("../lib", __FILE__)
require "grid-plugin-echo/version"

Gem::Specification.new do |s|
  s.name        = "grid-plugin-echo"
  s.version     = Grid::Plugin::Echo::VERSION
  s.authors     = ["Brian Muller"]
  s.email       = ["bamuller@gmail.com"]
  s.homepage    = ""
  s.summary     = "A simple grid module that loudly uses all of the gridcli hooks."
  s.description = "A simple grid module that loudly uses all of the gridcli hooks."

  s.rubyforge_project = "grid-plugin-echo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("gridcli", ">= 0.0.5")
end
