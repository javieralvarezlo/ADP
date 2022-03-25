class Dish < ApplicationRecord
  belongs_to :category

  enum price_type: { 'Precio por ración': "portion", 'Precio al peso': "weight" }
end
