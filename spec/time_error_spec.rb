require "time_error"

describe TimeError do
  it "#error returns difference between local and server time" do
    requester_double = double(:fake_requester)
    time = Time.new(2022, 12, 13, 13, 31, 19)
    timer_double = double(:fake_timer, now: time)
    allow(requester_double).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"13.40.76.229","datetime":"2022-12-13T13:31:19.557971+00:00","day_of_week":2,"day_of_year":347,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1670938279,"utc_datetime":"2022-12-13T13:31:19.557971+00:00","utc_offset":"+00:00","week_number":50}')
    time_error = TimeError.new(requester_double, timer_double)
    expect(time_error.error).to eq 0.557971
  end
end