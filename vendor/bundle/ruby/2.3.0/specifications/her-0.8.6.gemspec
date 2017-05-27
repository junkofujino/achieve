# -*- encoding: utf-8 -*-
# stub: her 0.8.6 ruby lib

Gem::Specification.new do |s|
  s.name = "her"
  s.version = "0.8.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["R\u{e9}mi Pr\u{e9}vost"]
  s.date = "2017-03-14"
  s.description = "Her is an ORM that maps REST resources and collections to Ruby objects"
  s.email = ["remi@exomel.com"]
  s.homepage = "http://her-rb.org"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A simple Representational State Transfer-based Hypertext Transfer Protocol-powered Object Relational Mapper. Her?"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.5"])
      s.add_development_dependency(%q<json>, ["~> 1.8"])
      s.add_runtime_dependency(%q<activemodel>, ["<= 6.0.0", ">= 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>, ["<= 6.0.0", ">= 3.0.0"])
      s.add_runtime_dependency(%q<faraday>, ["< 1.0", ">= 0.8"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.7"])
    else
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.5"])
      s.add_dependency(%q<json>, ["~> 1.8"])
      s.add_dependency(%q<activemodel>, ["<= 6.0.0", ">= 3.0.0"])
      s.add_dependency(%q<activesupport>, ["<= 6.0.0", ">= 3.0.0"])
      s.add_dependency(%q<faraday>, ["< 1.0", ">= 0.8"])
      s.add_dependency(%q<multi_json>, ["~> 1.7"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.5"])
    s.add_dependency(%q<json>, ["~> 1.8"])
    s.add_dependency(%q<activemodel>, ["<= 6.0.0", ">= 3.0.0"])
    s.add_dependency(%q<activesupport>, ["<= 6.0.0", ">= 3.0.0"])
    s.add_dependency(%q<faraday>, ["< 1.0", ">= 0.8"])
    s.add_dependency(%q<multi_json>, ["~> 1.7"])
  end
end
