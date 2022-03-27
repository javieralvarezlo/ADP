class CreateDishesAllergens < ActiveRecord::Migration[7.0]
  def change
    create_table :allergens_dishes, id: false do |t|
      t.belongs_to :allergen
      t.belongs_to :dish
    end
  end
end
