# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'saxon/version'

Gem::Specification.new do |spec|
  spec.name          = "saxon"
  spec.version       = Saxon::VERSION
  spec.authors       = ["Jakob Kofoed Janot"]
  spec.email         = ["jakob.janot@karnovgroup.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/jakobjanot/saxon-ffi"

  # # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  #spec.extensions    = ["ext/saxon/extconf.rb"]
  spec.extensions    << 'ext/Rakefile'

  spec.add_dependency 'ffi-compiler'
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  #spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec"
end
