class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PicturesUploader
  validate :picture_size

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "shouls be less than 5MB")
    end
  end
end
