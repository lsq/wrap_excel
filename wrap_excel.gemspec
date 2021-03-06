# -*- coding: utf-8; mode: ruby -*-
$:.push File.expand_path("../lib", __FILE__)
require "wrap_excel/version"

Gem::Specification.new do |s|
  s.name        = "wrap_excel"
  s.version     = WrapExcel::VERSION
  s.authors     = ["tomi"]
  s.email       = ["tomiacannondale@gmail.com"]
  s.homepage    = "https://github.com/tomiacannondale/wrap_excel"
  s.summary     = "WrapExcel is a wrapper library that specializes in the operation of Excel win32ole."
  s.description = "WrapExcel is to wrap the win32ole, and easy to use Excel operations with ruby. Detailed description please see the README."

  s.rubyforge_project = "wrap_excel"

  s.files         = `git ls-files`.split("\n")
  s.rdoc_options += [
                     '--main', 'README.rdoc',
                     '--charset', 'utf-8'
                    ]
  s.extra_rdoc_files = ['README.rdoc', 'README.ja.rdoc', 'LICENSE']

  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency "rake", '>= 0.9.2'
  s.add_development_dependency "rspec", '>= 2.6.0'
  s.add_development_dependency "rb-fchange", '>= 0.0.5'
  s.add_development_dependency "wdm", '>= 0.0.3'
  s.add_development_dependency "win32console", '>= 1.3.2'
  s.add_development_dependency "guard-rspec", '>= 2.1.1'
end
