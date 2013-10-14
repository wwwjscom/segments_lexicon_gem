# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'segments_lexicon/version'

Gem::Specification.new do |gem|
  gem.name          = "segments_lexicon"
  gem.version       = SegmentsLexicon::VERSION
  gem.authors       = ["Jason Soo"]
  gem.email         = ["wwwjscom@gmail.com"]
  gem.description   = %q{The lexicon manager for Segments}
  gem.summary       = %q{The lexicon manager for Segments}
  gem.homepage      = ""

  gem.add_runtime_dependency "sqlite3"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
