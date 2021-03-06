# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'localized/version'

Gem::Specification.new do |spec|
  spec.name          = "localized"
  spec.version       = Localized::VERSION
  spec.authors       = ["29sul"]
  spec.email         = ["contato@29sul.com.br"]
  spec.description   = %q{Gem for localization of attributes from ActiveRecord}
  spec.summary       = %q{Gem for localization of attributes from ActiveRecord}
  spec.homepage      = "http://29sul.com.br"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 4.0.2"
  spec.add_dependency "activesupport", ">= 4.0.2"
  spec.add_dependency "i18n", ">= 0.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "fuubar", '2.0.0.rc1'
  spec.add_development_dependency "coveralls"

  spec.add_development_dependency 'sqlite3'
end
