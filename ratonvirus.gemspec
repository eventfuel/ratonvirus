# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ratonvirus/version"

Gem::Specification.new do |spec|
  spec.name = "ratonvirus"
  spec.version = Ratonvirus::VERSION
  spec.authors = ["Antti Hukkanen"]
  spec.email = ["antti.hukkanen@mainiotech.fi"]

  spec.summary = "Provides antivirus checks for Rails."
  spec.description = "Adds antivirus check capability for Rails applications."
  spec.homepage = "https://github.com/mainio/ratonvirus"
  spec.license = "MIT"

  spec.files = Dir[
    "{app,config,lib}/**/*",
    "CHANGELOG.md",
    "LICENSE",
    "README.md"
  ]

  spec.require_paths = ["lib"]

  # The activesupport dependency is used for the string manipulations done in
  # the Ratonvirus main module through ActiveSupport::Inflector.
  spec.add_dependency "activesupport", ">= 5.0"

  # Basic development dependencies.
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"

  # Rails integration tests
  spec.add_development_dependency "rspec-rails", "~> 3.0"

  # Code coverage
  spec.add_development_dependency "simplecov", "~> 0.16"

  # The following Rails dependencies are needed to test the actual validator to
  # be attached to Active Models. These are not necessary for the basic
  # functionality of this gem and all other parts of the gem should work fine
  # without them. Therefore, only needed as development dependencies.
  spec.add_development_dependency "activemodel", ">= 5.0"
  spec.add_development_dependency "activestorage", ">= 5.0"

  # The following dependency is needed to test the CarrierWave storage. This is
  # not required for running this gem without CarrierWave.
  spec.add_development_dependency "carrierwave", "~> 1.2"

  # Rubocop linter
  spec.add_development_dependency "rubocop", "~> 0.64"
  spec.add_development_dependency "rubocop-rspec", "~> 1.32"
end
