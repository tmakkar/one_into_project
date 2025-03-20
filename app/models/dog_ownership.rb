class DogOwnership < ApplicationRecord
  belongs_to :user
  belongs_to :dog_breed
end
