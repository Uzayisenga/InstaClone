class Picture < ApplicationRecord
  validates :content, presence: true, unless: -> { image.present? }
  mount_uploader :image, ImageUploader
  belongs_to :user
end
