class Buyer < ApplicationRecord
  belongs_to :profile
  has_many :cars #now i get access to buyer.cars
  has_and_belongs_to_many :sellers
end
