
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "useless_gem_test/version"

Gem::Specification.new do |spec|
  spec.name          = "useless_gem_test"
  spec.version       = UselessGemTest::VERSION
  spec.authors       = ["RS"]
  spec.email         = [" "]

  spec.summary       = "Testing how to build a gem."
  spec.description   = 
  spec.homepage      = "https://github.com/xRayUnlimited"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
