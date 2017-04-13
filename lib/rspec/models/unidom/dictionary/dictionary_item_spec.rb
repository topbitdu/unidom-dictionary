describe Unidom::Dictionary::DictionaryItem, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      dictionary_code: 'ZZZZ',
      code:            'OTHR',
      value:           'other'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

    it_behaves_like 'validates text', model_attributes, :dictionary_code,
      length: described_class.columns_hash['dictionary_code'].limit..described_class.columns_hash['dictionary_code'].limit

    it_behaves_like 'validates text', model_attributes, :code,
      length: 1..described_class.columns_hash['code'].limit, allow_blank: true

    it_behaves_like 'validates text', model_attributes, :value,
      length: 2..described_class.columns_hash['value'].limit

  end

end
