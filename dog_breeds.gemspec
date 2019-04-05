
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dog_breeds/version"

Gem::Specification.new do |spec|
  spec.name          = "dog_breeds"
  spec.version       = DogBreeds::VERSION
  spec.authors       = ["<bethurban>"]
  spec.email         = ["<beth.urban@gmail.com>"]

  spec.summary       = "Users can get more info on American Kennel Club dog breeds."
  spec.description   = "Users can see which dog breeds are in each American Kennel Club groups
  and get more details on the characteristics of each breed."
  spec.homepage      = "https://github.com/bethurban/dog_breeds-cli-app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"

end
