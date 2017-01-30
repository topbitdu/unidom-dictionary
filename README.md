# Unidom Dictionary 字典领域模型引擎

[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/unidom-dictionary/frames)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

[![Gem Version](https://badge.fury.io/rb/unidom-dictionary.svg)](https://badge.fury.io/rb/unidom-dictionary)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/unidom-dictionary.svg)](https://gemnasium.com/github.com/topbitdu/unidom-dictionary)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Dictionary domain model engine includes Dictionary Item and its relative models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。字典领域模型引擎包括字典项及其相关的模型。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile

```ruby
gem 'unidom-dictionary'
```



## Run the Database Migration

```shell
rake db:migrate
```
The migration versions start with 200007.



## Call the Model

```ruby
# Dimensions of the Wellness
dictionary_code = 'WLNS'
attributes      = { dictionary_code: dictionary_code, opened_at: Time.now }
occupational    = Unidom::Dictionary::DictionaryItem.create! attributes.merge({ code: 'OCPT', value: 'Occupational' })
physical        = Unidom::Dictionary::DictionaryItem.create! attributes.merge({ code: 'PHSC', value: 'Physical'     })
social          = Unidom::Dictionary::DictionaryItem.create! attributes.merge({ code: 'SOCL', value: 'Social'       })
intellectual    = Unidom::Dictionary::DictionaryItem.create! attributes.merge({ code: 'INTL', value: 'Intellectual' })
spiritual       = Unidom::Dictionary::DictionaryItem.create! attributes.merge({ code: 'SPRT', value: 'Spiritual'    })
emotional       = Unidom::Dictionary::DictionaryItem.create! attributes.merge({ code: 'EMTN', value: 'Emotional'    })
# The #code attribtue could be nil.
```



## Disable the Model & Migration

If you only need the app components other than models, the migrations should be neglected, and the models should not be loaded.
```ruby
# config/initializers/unidom.rb
Unidom::Common.configure do |options|

  options[:neglected_namespaces] = %w{
    Unidom::Dictionary
  }

end
```



## RSpec examples

```ruby
# spec/models/unidom_spec.rb
require 'unidom/dictionary/models_rspec'

# spec/types/unidom_spec.rb
require 'unidom/dictionary/types_rspec'

# spec/validators/unidom_spec.rb
require 'unidom/dictionary/validators_rspec'
```
