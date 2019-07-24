class Brand < ApplicationRecord
  has_many :tyres
  mount_uploader :logo, LogoUploader

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :logo, presence: true
end
