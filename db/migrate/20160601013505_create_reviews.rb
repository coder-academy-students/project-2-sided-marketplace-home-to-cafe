class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :reviewee, foreign_key: true
      t.references :reviewer, foreign_key: true
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
