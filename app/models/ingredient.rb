class Ingredient < ApplicationRecord
  #  Association
  has_many  :doses

  # Validation
  validates :name, uniqueness: true, presence: true, allow_blank: false
end
