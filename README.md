# Unidom Dictionary 字典领域模型引擎

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
