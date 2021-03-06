# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "epp-client/hostmaster-version"

Gem::Specification.new do |gem|
  gem.name          = "epp-client-hostmaster"
  gem.version       = EPPClient::HostmasterVersion::VERSION
  gem.authors       = ["Yuriy Kolodovskyy"]
  gem.email         = %w{kolodovskyy@ukrindex.com}
  gem.description   = %q{Hostmaster.UA EPP client library}
  gem.summary       = %q{Hostmaster.UA EPP client library}
  gem.homepage      = "https://github.com/kolodovskyy/epp-client-hostmaster"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w{lib}

  gem.add_dependency "epp-client-base", "~> 0.11.0"
  gem.add_dependency "builder"

  gem.add_development_dependency "bundler"
end
