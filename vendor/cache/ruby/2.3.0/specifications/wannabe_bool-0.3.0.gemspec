# -*- encoding: utf-8 -*-
# stub: wannabe_bool 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "wannabe_bool"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Prodis a.k.a. Fernando Hamasaki de Amorim"]
  s.date = "2015-10-20"
  s.description = "If string, integer, symbol and nil values wanna be a boolean value, they can with the new #to_b method (and more)."
  s.email = "prodis@gmail.com"
  s.homepage = "https://github.com/prodis/wannabe_bool"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "If string, integer, symbol and nil values wanna be a boolean value, they can with the new #to_b method (and more)."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
