class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :latest_updated, -> { order(updated_at: :desc) }
end
