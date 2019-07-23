class Tyre < ApplicationRecord
  belongs_to :brand
  has_many :images
  extend FriendlyId
  friendly_id :name, use: :slugged
end
