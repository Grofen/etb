class Category < ApplicationRecord
  extend FriendlyId
  has_many :educations
  validates :name, presence: true
  friendly_id :name, use: :slugged
end
