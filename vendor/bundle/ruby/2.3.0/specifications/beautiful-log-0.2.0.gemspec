# -*- encoding: utf-8 -*-
# stub: beautiful-log 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "beautiful-log"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["nogahighland"]
  s.bindir = "exe"
  s.date = "2017-04-18"
  s.description = "beautiful-log provides a delightful means of displaying useful and beautiful log in Ruby on Rails application."
  s.email = ["noga.highland@gmail.com"]
  s.homepage = "https://github.com/nogahighland/beautiful-log/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = ""

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.12"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_runtime_dependency(%q<colorize>, ["~> 0.8.1"])
      s.add_runtime_dependency(%q<awesome_print>, ["~> 1.7.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.12"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<colorize>, ["~> 0.8.1"])
      s.add_dependency(%q<awesome_print>, ["~> 1.7.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.12"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<colorize>, ["~> 0.8.1"])
    s.add_dependency(%q<awesome_print>, ["~> 1.7.0"])
  end
end
