class Tyre < ApplicationRecord
  belongs_to :brand
  has_many :images
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :width, presence: true
  validates :ratio, presence: true
  validates :rim, presence: true
  validates :model, presence: true
  validates :load, presence: true
  validates :speed, presence: true
  validates :season, presence: true
  validates :brand_id, presence: true
  validates :price, presence: true
  validates :made_in, presence: true
  validates :year, presence: true
  validates :description, presence: true
end
