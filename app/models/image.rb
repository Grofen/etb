class Image < ApplicationRecord
  belongs_to :tyre
  mount_uploader :image_url, PictureUploader
end
