class Tyre < ApplicationRecord
  belongs_to :brand
  has_many :images
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :width, :ratio, :rim, :model, :load, :speed, :season, :brand_id, :price, :made_in, :year, :description, presence: true
end
