# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gviz/version'

Gem::Specification.new do |gem|
  gem.name          = "gviz"
  gem.version       = Gviz::VERSION
  gem.authors       = ["kyoendo"]
  gem.email         = ["postagie@gmail.com"]
  gem.description   = %q{Ruby's interface of graphviz}
  gem.summary       = %q{Ruby's interface of graphviz. It generate a dot file with simple ruby's syntax. }
  gem.homepage      = "https://github.com/melborne/Gviz"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>=1.9.3'
  gem.add_development_dependency 'rspec'
  gem.add_dependency 'trollop'
end
