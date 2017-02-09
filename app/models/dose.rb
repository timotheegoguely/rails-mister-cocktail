class Dose < ApplicationRecord
  # Associations
  belongs_to :cocktail
  belongs_to :ingredient

  # Validation
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
end
