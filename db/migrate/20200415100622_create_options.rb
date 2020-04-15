class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :description
      t.integer :price
      t.references :menu_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
