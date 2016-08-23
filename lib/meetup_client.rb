require 'meetup_client/configuration'

module MeetupClient
  BASE_URL = 'https://api.meetup.com/'

  def self.configure(&block)
    yield(configuration)
  end

  def self.configuration
    @config ||= Configuration.new
  end

  def self.attendance_for_event(event_id)
    ::MeetupClient::Event.find_attendance(event_id)
  end
end
