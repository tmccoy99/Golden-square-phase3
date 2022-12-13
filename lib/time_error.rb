require 'date'
require 'json'
require 'net/http'

class TimeError
  
  def initialize(requester = Net::HTTP, timer = Time)
    @requester = requester ; @timer = timer
  end
  
  def error
    return get_server_time - @timer.now
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end
