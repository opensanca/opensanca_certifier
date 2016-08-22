class Event < ApplicationRecord
  validates :title,      presence: true
  validates :meetup_url, presence: true
  validates_format_of :meetup_url, with: %r{https?:\/\/(www.)?meetup.com\/(.*)\/opensanca\/events\/(.*)\/}
end
