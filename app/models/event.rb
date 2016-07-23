class Event < ApplicationRecord
  validates :title, presence: true
end
