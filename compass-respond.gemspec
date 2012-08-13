path = "#{File.dirname(__FILE__)}/lib"
require File.join(path, 'version')

Gem::Specification.new do |gemspec|
  gemspec.name = "compass-respond"
  gemspec.version = RespondTo::VERSION # Update the VERSION.yml file to set this.
  gemspec.date = Time.now.strftime("%Y-%m-%d") # Automatically update for each build
  gemspec.description = "Easier media queries for Compass."
  gemspec.homepage = "http://github.com/mikesten/compass-respond"
  gemspec.authors = ["Mike Stenhouse"]
  gemspec.email = "mike@donotremove.co.uk"
  gemspec.has_rdoc = false
  gemspec.require_paths = %w(lib)
  gemspec.rubygems_version = "1.4.2"
  gemspec.summary = "Easier media queries for Compass."

  gemspec.add_dependency 'sass', '>=3.2.0'
  gemspec.add_dependency 'compass', '>=0.11.7'

  gemspec.files = %w(README.md VERSION.yml Rakefile)
  gemspec.files += Dir.glob("lib/**/*")
end


