# pdftk-forms [![Build Status](https://github.com/xtremeCoder911/pdftk-form)

https://github.com/xtremeCoder911/pdftk-form

## Usage

### FDF/XFdf creation

```ruby
require 'pdftk_form'
fdf = PdfForms::Fdf.new :key => 'value', :other_key => 'other value'
# use to_pdf_data if you just want the fdf data, without writing it to a file
puts fdf.to_pdf_data
# write fdf file
fdf.save_to 'path/to/file.fdf'
```

To generate XFDF instead of FDF instantiate `PdfForms::XFdf` instead of `PdfForms::Fdf`

### Query form fields and fill out PDF forms with pdftk

```ruby
require 'pdftk_form'

# adjust the pdftk path to suit your pdftk installation
# add :data_format => 'XFdf' option to generate XFDF instead of FDF when
# filling a form (XFDF is supposed to have better support for non-western
# encodings)
# add :data_format => 'FdfHex' option to generate FDF with values passed in
# UTF16 hexadecimal format (Hexadecimal format has also proven more reliable
# for passing latin accented characters to pdftk)
# add :utf8_fields => true in order to get UTF8 encoded field metadata (this
# will use dump_data_fields_utf8 instead of dump_data_fields in the call to
# pdftk)
pdftk = PdfForms.new('/usr/local/bin/pdftk')

# find out the field names that are present in form.pdf
pdftk.get_field_names 'path/to/form.pdf'

# take form.pdf, set the 'foo' field to 'bar' and save the document to myform.pdf
pdftk.fill_form '/path/to/form.pdf', 'myform.pdf', :foo => 'bar'

# optionally, add the :flatten option to prevent editing of a filled out form
pdftk.fill_form '/path/to/form.pdf', 'myform.pdf', {:foo => 'bar'}, :flatten => true

# to enable PDF encryption, pass encrypt: true. By default, a random 'owner
# password' will be used, but you can also set one with the :encrypt_pw option.
pdftk.fill_form '/path/to/form.pdf', 'myform.pdf', {foo: 'bar'}, encrypt: true, encrypt_options: 'allow printing'

# you can also protect the PDF even from opening by specifying an additional user_pw option:
pdftk.fill_form '/path/to/form.pdf', 'myform.pdf', {foo: 'bar'}, encrypt: true, encrypt_options: 'user_pw secret'
```

Any options shown above can also be set when initializing the PdfForms
instance. In this case, options given to `fill_form` will override the global
options.

## License

Licensed under the MIT License.

