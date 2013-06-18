# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "toad_notifier/version"

Gem::Specification.new do |s|
  s.name        = "toad_notifier"
  s.version     = ToadNotifier::VERSION
  s.authors     = ["Glenn Roberts", "Ile Eftimov"]
  s.email       = ["glenn@siyelo.com", "ile@siyelo.com"]
  s.homepage    = ""
  s.summary     = %q{Hetzner wrapper for ToadHopper}
  s.description = %q{Hetzner wrapper for ToadHopper}

  s.rubyforge_project = "toad_notifier"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_runtime_dependency "toadhopper", '~> 2.1'
end
