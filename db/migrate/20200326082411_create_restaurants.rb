class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :photo
      t.string :name
      t.text :bio
      t.string :address
      t.float :latitude, default: 0
      t.float :longitude, default: 0
      t.string :cuisine
      t.integer :rating
      t.string :vegan, default: 'veggie'

      t.timestamps
    end
  end
end
