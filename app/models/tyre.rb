class Tyre < ApplicationRecord
  belongs_to :brand
  mount_uploader :image_url, PictureUploader
end
