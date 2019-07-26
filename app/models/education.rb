class Education < ApplicationRecord
  extend FriendlyId
  belongs_to :category
  validates :title, :article, presence: true
  friendly_id :name, use: :slugged
end
