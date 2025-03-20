class Category < ApplicationRecord
  has_many :products
  
  # Example validations
  validates :name, presence: true, uniqueness: true
  validates :description, length: { maximum: 500 }
end
