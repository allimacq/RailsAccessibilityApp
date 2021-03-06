class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.belongs_to :state, null: false, foreign_key: true
      t.string :zipcode

      t.timestamps
    end
  end
end
