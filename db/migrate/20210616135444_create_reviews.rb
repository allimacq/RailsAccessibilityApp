class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :review
      t.integer :rating
      t.string :accessible
      t.belongs_to :activity, null: false, foreign_key: true
      t.belongs_to :park, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
