lib = File.expand_path("lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "getauthtoken/version"

Gem::Specification.new do |spec|
  spec.name          = "getauthtoken"
  spec.version       = Getauthtoken::VERSION
  spec.authors       = ["Dylan Irlbeck"]
  spec.email         = ["irlbeck2@illinois.edu"]

  spec.summary       = "Acquire a Xaptum API authorization token"
  spec.description   = "Small CLI utility to acquire a Xaptum API authentication token and copy into your clipboard."
  spec.homepage      = "https://xaptum.com"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dylanirlbeck/getauthtoken"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})

  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency "http", "~> 4.2.0"
  spec.add_dependency "highline", "~> 2.0.3"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rspec", "~> 3.9.0"
end
