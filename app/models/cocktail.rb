class Cocktail < ApplicationRecord
  # Association
  has_many  :doses, dependent: :destroy
  has_many  :ingredients, through: :doses

  # Validation
  validates :name, uniqueness: true, presence: true, allow_blank: false

  has_attachment :photo
end
