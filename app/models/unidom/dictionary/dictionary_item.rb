##
# Dictionary Item 是字典项。

class Unidom::Dictionary::DictionaryItem < Unidom::Dictionary::ApplicationRecord

  self.table_name = 'unidom_dictionary_items'

  include Unidom::Common::Concerns::ModelExtension

  validates :code,  allow_blank: true, length: { in: 1..self.columns_hash['code'].limit  }
  validates :value, presence:    true, length: { in: 2..self.columns_hash['value'].limit }

end
