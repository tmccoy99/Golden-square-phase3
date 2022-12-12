require "track"

RSpec.describe Track do
  it "constructs" do
    Track.new("title", "artist")
  end
  
  context "matches? called with string argument" do
    track1 = Track.new("California Girls", "Katy Perry")
    track2 = Track.new("Wannabe", "The Spice Girls")
    it "returns true if string matches either title or artist" do
      expect(track1.matches?("Girls")).to eq true
      expect(track2.matches?("Girls")).to eq true
    end
    
    it "returns false if string does not match either title or artist" do
      expect(track1.matches?("Gurls")).to eq false
      expect(track2.matches?("Spicy")).to eq false
    end
  end
end