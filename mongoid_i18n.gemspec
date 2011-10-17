# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongoid_i18n}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Rodrigo Álvarez}]
  s.date = %q{2011-10-17}
  s.description = %q{This gem aims to be a transparent way to deal with localizable fields.
      Basically use localized_field() instead of field() and that's it.
      It will take care of locales for you when using find or criteria.
      }
  s.email = %q{papipo@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "config/locales/en.yml",
    "lib/mongoid/i18n.rb",
    "lib/mongoid/i18n/criterion/selector.rb",
    "lib/mongoid/i18n/localized_field.rb",
    "lib/mongoid/i18n/localized_validator.rb",
    "mongoid_i18n.gemspec",
    "spec/.rspec",
    "spec/integration/mongoid/i18n_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/Papipo/mongoid_i18n}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Mongoid plugin to deal with localizable fields}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, [">= 2.1.0"])
      s.add_development_dependency(%q<bson_ext>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<mongoid>, [">= 2.1.0"])
      s.add_dependency(%q<bson_ext>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<mongoid>, [">= 2.1.0"])
    s.add_dependency(%q<bson_ext>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end

