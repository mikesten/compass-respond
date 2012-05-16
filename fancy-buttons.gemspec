path = "#{File.dirname(__FILE__)}/lib"
require File.join(path, 'version')

Gem::Specification.new do |gemspec|
  gemspec.name = "compass-respond-to"
  gemspec.version = RespondTo::VERSION # Update the VERSION.yml file to set this.
  gemspec.date = Time.now.strftime("%Y-%m-%d") # Automatically update for each build
  gemspec.description = "Easy media queries with chriseppstein's respond-to mixin."
  gemspec.homepage = "http://github.com/mikesten/compass-respond-to"
  gemspec.authors = ["Mike Stenhouse"]
  gemspec.email = "mike@donotremove.co.uk"
  gemspec.has_rdoc = false
  gemspec.require_paths = %w(lib)
  gemspec.rubygems_version = "1.4.2"
  gemspec.summary = "Easy media queries with chriseppstein's respond-to mixin."

  gemspec.add_dependency 'sass', '~>3.2.0.alpha'
  gemspec.add_dependency 'compass', '>=0.11.7'

  gemspec.files = %w(README.markdown VERSION.yml)
  gemspec.files += Dir.glob("lib/**/*")
end


