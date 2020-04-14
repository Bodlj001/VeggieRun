class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :dish_name
      t.string :description
      t.integer :price
      t.integer :calories
      t.string :mealtype
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
