class Tyre < ApplicationRecord
  belongs_to :brand
  has_many :images
end
