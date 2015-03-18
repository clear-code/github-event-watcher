lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github-event-watcher/version'

Gem::Specification.new do |spec|
  spec.name          = "github-event-watcher"
  spec.version       = GitHubEventWatcher::VERSION
  spec.authors       = ["Kouhei Sutou"]
  spec.email         = ["kou@clear-code.com"]
  spec.summary       = %q{GitHub event watcher}
  spec.description   = %q{GitHub event watcher}
  spec.homepage      = ""
  spec.license       = "GPLv3 or later"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "test-unit-rr"
  spec.add_development_dependency "test-unit-capybara"
end
