# -*- encoding: utf-8 -*-
# stub: less-rails-semantic_ui 2.2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "less-rails-semantic_ui"
  s.version = "2.2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Maxim Dobryakov"]
  s.date = "2016-07-11"
  s.description = "This is a gem for Rails with Semantic UI assets inside."
  s.email = ["maxim.dobryakov@gmail.com"]
  s.homepage = "https://github.com/Semantic-Org/Semantic-UI-Rails-LESS"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Semantic UI assets for Rails"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<less-rails>, ["< 2.8.0", ">= 2.6.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rack>, [">= 2.0.0"])
      s.add_development_dependency(%q<minispec>, ["~> 0.0.2"])
      s.add_development_dependency(%q<activesupport>, ["< 10.0", ">= 4.0"])
      s.add_development_dependency(%q<rails>, ["< 10.0", ">= 4.0"])
      s.add_development_dependency(%q<therubyracer>, ["~> 0.12.2"])
      s.add_development_dependency(%q<appraisal>, ["< 3.0", ">= 2.0"])
    else
      s.add_dependency(%q<less-rails>, ["< 2.8.0", ">= 2.6.0"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rack>, [">= 2.0.0"])
      s.add_dependency(%q<minispec>, ["~> 0.0.2"])
      s.add_dependency(%q<activesupport>, ["< 10.0", ">= 4.0"])
      s.add_dependency(%q<rails>, ["< 10.0", ">= 4.0"])
      s.add_dependency(%q<therubyracer>, ["~> 0.12.2"])
      s.add_dependency(%q<appraisal>, ["< 3.0", ">= 2.0"])
    end
  else
    s.add_dependency(%q<less-rails>, ["< 2.8.0", ">= 2.6.0"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rack>, [">= 2.0.0"])
    s.add_dependency(%q<minispec>, ["~> 0.0.2"])
    s.add_dependency(%q<activesupport>, ["< 10.0", ">= 4.0"])
    s.add_dependency(%q<rails>, ["< 10.0", ">= 4.0"])
    s.add_dependency(%q<therubyracer>, ["~> 0.12.2"])
    s.add_dependency(%q<appraisal>, ["< 3.0", ">= 2.0"])
  end
end
