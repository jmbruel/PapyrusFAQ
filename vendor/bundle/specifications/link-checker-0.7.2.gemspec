# -*- encoding: utf-8 -*-
# stub: link-checker 0.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "link-checker"
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Alyn Porter"]
  s.date = "2012-10-09"
  s.description = "A Ruby gem for checking the links in a web site. Can either scan files or crawl pages. Multi-threaded, with red/green colored output, support for SSL, and support for following redirects. Works great with Octopress, Jekyll, or any collection of static HTML files. With 100% RSpec coverage."
  s.executables = ["check-links"]
  s.extra_rdoc_files = ["LICENSE.txt", "README.md"]
  s.files = ["LICENSE.txt", "README.md", "bin/check-links"]
  s.homepage = "http://www.ryanalynporter.com/2012/10/06/introducing-the-link-checker-ruby-gem/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.3.0"
  s.summary = "Check the links in a web site before deploying."

  s.installed_by_version = "2.3.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.5.5"])
      s.add_runtime_dependency(%q<colorize>, ["~> 0.5.8"])
      s.add_runtime_dependency(%q<anemone>, ["~> 0.7.2"])
      s.add_runtime_dependency(%q<trollop>, ["~> 2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.11.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.6.4"])
      s.add_development_dependency(%q<fakeweb>, ["~> 1.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.8.2.1"])
      s.add_development_dependency(%q<redcarpet>, ["~> 2.1.1"])
      s.add_development_dependency(%q<debugger>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.5.5"])
      s.add_dependency(%q<colorize>, ["~> 0.5.8"])
      s.add_dependency(%q<anemone>, ["~> 0.7.2"])
      s.add_dependency(%q<trollop>, ["~> 2.0"])
      s.add_dependency(%q<rspec>, ["~> 2.11.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<simplecov>, ["~> 0.6.4"])
      s.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.8.2.1"])
      s.add_dependency(%q<redcarpet>, ["~> 2.1.1"])
      s.add_dependency(%q<debugger>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.5.5"])
    s.add_dependency(%q<colorize>, ["~> 0.5.8"])
    s.add_dependency(%q<anemone>, ["~> 0.7.2"])
    s.add_dependency(%q<trollop>, ["~> 2.0"])
    s.add_dependency(%q<rspec>, ["~> 2.11.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<simplecov>, ["~> 0.6.4"])
    s.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.8.2.1"])
    s.add_dependency(%q<redcarpet>, ["~> 2.1.1"])
    s.add_dependency(%q<debugger>, [">= 0"])
  end
end
