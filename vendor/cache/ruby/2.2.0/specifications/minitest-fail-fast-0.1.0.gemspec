# -*- encoding: utf-8 -*-
# stub: minitest-fail-fast 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "minitest-fail-fast"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Teo Ljungberg"]
  s.bindir = "exe"
  s.date = "2015-07-18"
  s.description = "Reimplements RSpec's \"fail fast\" feature for minitest"
  s.email = ["teo@teoljungberg.com"]
  s.homepage = "https://github.com/teoljungberg/minitest-fail-fast"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Fail and exit as soon as a test fails"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, ["~> 5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.9"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<minitest>, ["~> 5"])
      s.add_dependency(%q<bundler>, ["~> 1.9"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5"])
    s.add_dependency(%q<bundler>, ["~> 1.9"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
