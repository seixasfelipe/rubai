# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "rubai"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ricardo Valeriano"]
  s.email       = ["ricardo.valeriano@gmail.com"]
  s.homepage    = "http://github.com/ricardovaleriano/rubai"
  s.summary     = "Simple local http server for your local dirs"
  s.description = <<SUM
  Simple local http server for your local dirs
SUM
  s.required_rubygems_version = ">= 0"

  s.require_path = 'lib'
  s.files        = `git ls-files | sed 's/examples.*//'`.split("\n").reject{|f| f == ""}

  s.add_dependency 'rack'
end
