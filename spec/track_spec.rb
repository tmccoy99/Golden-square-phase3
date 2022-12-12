require "track"

RSpec.describe Track do
  it "constructs" do
    Track.new("title", "artist")
  end
  
  context "matches? called with string argument" do
    it "returns true if string matches either title or artist" do
      track1 = Track.new("California Girls", "Katy Perry")
      track2 = Track.new("Wannabe", "The Spice Girls")
      expect(track1.matches?("Girls")).to eq true
    end
  end
end