MeetupClient.configure do |config|
  config.api_key = ENV['MEETUP_API_KEY']
  config.urlname = ENV['MEETUP_URLNAME']
end
