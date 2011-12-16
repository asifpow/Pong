# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{iron-term-ansicolor}
  s.version = "0.0.5"
  s.platform = %q{universal-dotnet}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Will Green", "David Blackmon", "Ivan Porto Carrero", "Danny Coates"]
  s.date = %q{2010-03-29}
  s.description = %q{iron-term-ansicolor brings color output to IronRuby on Windows}
  s.email = %q{will@hotgazpacho.org}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "iron-term-ansicolor.gemspec", "lib/iron-term-ansicolor.rb", "spec/iron-term-ansicolor_simple_background_spec.rb", "spec/iron-term-ansicolor_simple_foreground_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/hotgazpacho/iron-term-ansicolor}
  s.rdoc_options = ["--quiet", "--title", "iron-term-ansicolor brings color output to IronRuby on Windows", "--main", "README.rdoc", "--line-numbers"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{iron-term-ansicolor brings color output to IronRuby on Windows}
  s.test_files = ["spec/iron-term-ansicolor_simple_background_spec.rb", "spec/iron-term-ansicolor_simple_foreground_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<term-ansicolor>, [">= 1.0.4"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<term-ansicolor>, [">= 1.0.4"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<term-ansicolor>, [">= 1.0.4"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
