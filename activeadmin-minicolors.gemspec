# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin/minicolors/version'

Gem::Specification.new do |spec|
  spec.name          = "activeadmin-minicolors"
  spec.version       = Activeadmin::Minicolors::VERSION
  spec.authors       = ["Kholdrex"]
  spec.email         = ["alexandrkholodniak@gmail.com"]
  spec.summary       = %q{Incorporate JQuery Minicolors into ActiveAdmin}
  spec.description   = %q{With ActiveAdmin-Minicolors you are able to chose color option in Forms and Filters}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'activeadmin'
  spec.add_runtime_dependency 'jquery-rails'
  spec.add_runtime_dependency 'jquery-minicolors-rails'
end
