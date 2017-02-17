# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphqljs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "graphqljs-rails"
  spec.version       = GraphQLJS::Rails::VERSION
  spec.authors       = ["Fatih Kadir Akın"]
  spec.email         = ["fatihkadirakin@gmail.com"]
  spec.summary       = %q{GraphQL.js integration for Rails}
  spec.homepage      = "https://github.com/f/graphql.js"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'railties'
  spec.add_runtime_dependency 'actionpack'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails", "~> 4.0.0"
end

