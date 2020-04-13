class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      enable_extension "hstore"
      t.string :order, :hstore
      t.datetime :time
      t.integer :price
      t.references :restaurants, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
