class Picture < ApplicationRecord
  validates :content, presence: true, unless: -> { image.present? }
end
