class Image < ApplicationRecord
  belongs_to :tyre
  mount_uploader :image_url, PictureUploader

  validates :tyre_id, presence: true
  validates :image_url, presence: true
end
