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

    it_behaves_like 'validates', model_attributes, :dictionary_code,
      {                          } => 0,
      { dictionary_code: nil     } => 2,
      { dictionary_code: ''      } => 2,
      { dictionary_code: 'A'     } => 1,
      { dictionary_code: 'AA'    } => 1,
      { dictionary_code: 'AAA'   } => 1,
      { dictionary_code: 'AAAA'  } => 0,
      { dictionary_code: 'AAAAA' } => 1

    it_behaves_like 'validates', model_attributes, :code,
      {              } => 0,
      { code: nil    } => 0,
      { code: ''     } => 0,
      { code: 'A'    } => 0,
      { code: 'AA'   } => 0,
      { code: 'AAA'  } => 0,
      { code: 'A'*63 } => 0,
      { code: 'A'*64 } => 0,
      { code: 'A'*65 } => 1

    it_behaves_like 'validates', model_attributes, :value,
      {                } => 0,
      { value: nil     } => 2,
      { value: ''      } => 2,
      { value: 'A'     } => 1,
      { value: 'AA'    } => 0,
      { value: 'AAA'   } => 0,
      { value: 'A'*199 } => 0,
      { value: 'A'*200 } => 0,
      { value: 'A'*201 } => 1

  end

end
