class User < ApplicationRecord
  has_many :dog_ownerships
  has_many :dog_breeds, through: :dog_ownerships
end
