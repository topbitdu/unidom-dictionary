class CreateUnidomDictionaryItems < ActiveRecord::Migration

  def change

    create_table :unidom_dictionary_items, id: :uuid do |t|

      t.column :dictionary_code, 'char(4)', null: false, default: 'ZZZZ'
      t.string :code,                       null: true,  default: nil, limit: 64

      t.string :value, null: false, default: '', limit: 200

      t.text :description
      t.text :instruction

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: Unidom::Common::OPENED_AT
      t.datetime :closed_at,        null: false, default: Unidom::Common::CLOSED_AT
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

  end

end
