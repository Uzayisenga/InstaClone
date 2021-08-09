class Picture < ApplicationRecord
  validates :content, presence: true, unless: -> { image.present? }
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
