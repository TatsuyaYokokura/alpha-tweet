class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  scope :latest_updated, -> { order(updated_at: :desc) }
end
