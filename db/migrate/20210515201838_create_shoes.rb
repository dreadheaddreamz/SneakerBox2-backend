class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :description
      t.string :image

      t.belongs_to :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
