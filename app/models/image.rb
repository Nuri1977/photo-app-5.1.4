class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PicturesUploader
end
