##
# Dictionary Item 是字典项。

class Unidom::Dictionary::DictionaryItem < Unidom::Dictionary::ApplicationRecord

  self.table_name = 'unidom_dictionary_items'

  include Unidom::Common::Concerns::ModelExtension

  validates :value, presence: true, length: { in: 2..self.columns_hash['value'].limit }

end unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Dictionary::DictionaryItem'
