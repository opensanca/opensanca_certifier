module MeetupClient
  class Event
    def self.find_attendance(event_id)
      uri = URI.parse("#{BASE_URL}/#{MeetupClient.configuration.urlname}/events/#{event_id}/attendance")
      params = { sign: true, key: MeetupClient.configuration.api_key }
      uri.query = URI.encode_www_form(params)
      res = Net::HTTP.get_response(uri)
      JSON.parse(res.body)
    end
  end
end
