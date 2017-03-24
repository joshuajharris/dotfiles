# -*- encoding: utf-8 -*-
# stub: alphred 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "alphred"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alpha Chen"]
  s.date = "2016-07-15"
  s.email = ["alpha.chen@gmail.com"]
  s.homepage = "https://github.com/kejadlen/alphred"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Helper utilities for making Alfred workflows."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, ["~> 3.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<listen>, ["~> 3.0.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
    else
      s.add_dependency(%q<builder>, ["~> 3.2"])
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<listen>, ["~> 3.0.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>, ["~> 3.2"])
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<listen>, ["~> 3.0.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
  end
end
