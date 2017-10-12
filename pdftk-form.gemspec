# coding: UTF-8

require File.expand_path("../lib/pdftk_form/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "pdftk-form"
  s.version     = PdfForms::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Xtreme Coder"]
  s.email       = ["xtremeCoder911@gmail.com"]
  s.homepage    = "http://github.com/xtremeCoder911/pdftk-form"
  s.summary     = %q{Fill out PDF forms with pdftk (http://www.accesspdf.com/pdftk/).}
  s.description = %q{A Ruby frontend to the pdftk binary, including FDF and XFDF creation. Just pass your template and a hash of data to fill in.}
  s.licenses    = ['MIT']

  s.required_rubygems_version = ">= 1.3.6"

  # required for validation
  s.rubyforge_project         = "pdftk-form"

  # If you have other dependencies, add them here
  s.add_dependency "cliver", "~> 0.3.2"
  s.add_dependency "safe_shell", [">= 1.0.3", "< 2.0"]
  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'rake', '~> 10.0'

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md", "*.rdoc"]
  s.require_path = 'lib'

end
