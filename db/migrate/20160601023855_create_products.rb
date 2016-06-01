class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :cake_type
      t.text :description
      t.time :time_to_bake

      t.timestamps
    end
  end
end
