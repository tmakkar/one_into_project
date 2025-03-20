class DogBreed < ApplicationRecord
  has_many :dog_ownerships
  has_many :users, through: :dog_ownerships
end
