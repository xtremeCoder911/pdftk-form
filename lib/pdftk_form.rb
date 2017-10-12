# coding: UTF-8

require 'pdftk_form/version'
require 'pdftk_form/normalize_path'
require 'pdftk_form/data_format'
require 'pdftk_form/fdf'
require 'pdftk_form/xfdf'
require 'pdftk_form/fdf_hex'
require 'pdftk_form/pdf'
require 'pdftk_form/pdftk_wrapper'


module PdfForms
  # shorthand for PdfForms::PdftkWrapper.new(...)
  def self.new(*args)
    PdftkWrapper.new *args
  end
end
