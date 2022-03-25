class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.belongs_to :category, null: false, foreign_key: true
      t.float :price
      t.integer :price_type

      t.timestamps
    end
  end
end
