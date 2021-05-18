class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      #t.belongs_to :shoe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
