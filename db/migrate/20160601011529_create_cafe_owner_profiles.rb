class CreateCafeOwnerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :cafe_owner_profiles do |t|
      t.references :user, foreign_key: true
      t.string :logo_url
      t.string :name
      t.text :address
      t.string :phone_number
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
