# -*- encoding: utf-8 -*-
require File.expand_path('../lib/say/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["rochefort"]
  gem.email         = ["teraswan@gmail.com"]
  gem.summary       = %q{extend Mac OSX say command}
  gem.description   = gem.summary
  gem.homepage      = "https://github.com/rochefort/say"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "say"
  gem.require_paths = ["lib"]
  gem.version       = Say::VERSION
end
