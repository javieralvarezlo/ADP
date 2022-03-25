class Dish < ApplicationRecord
  belongs_to :category
  has_one_attached :cover

  enum price_type: { 'Precio por ración': "portion", 'Precio al peso': "weight" }
end
