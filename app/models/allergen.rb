class Allergen < ApplicationRecord
  has_and_belongs_to_many :dishes

  has_one_attached :icon
end
