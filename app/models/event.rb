class Event < ApplicationRecord
  validates :title,      presence: true
  validates :meetup_url, presence: true
end
