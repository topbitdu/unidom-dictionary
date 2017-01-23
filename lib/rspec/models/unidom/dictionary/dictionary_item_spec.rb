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

  end

end
