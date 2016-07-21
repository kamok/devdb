# -*- encoding: utf-8 -*-
# stub: html_page 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "html_page"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Doyle"]
  s.bindir = "exe"
  s.date = "2015-12-13"
  s.description = "Inject content into an existing HTML document."
  s.email = ["sean.p.doyle24@gmail.com"]
  s.homepage = "https://github.com/seanpdoyle/html_page"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Inject content into an existing HTML document."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
