require "music_library"

RSpec.describe "MusicLibrary integration testing" do
  context "With tracks added to music library" do
    lib = MusicLibrary.new
    track1 = Track.new("great song", "great band")
    track2 = Track.new("bad song", "bad band")
    it "all returns saved tracks in array" do
      lib.add(track1)
      expect(lib.all).to eq [track1]
      lib.add(track2)
      expect(lib.all).to eq [track1, track2]
    end
    
    it "search returns saved tracks that match keyword in array" do
      expect(lib.search("song")).to eq [track1, track2]
      expect(lib.search("band")).to eq [track1, track2]
      expect(lib.search("great")).to eq [track1]
      expect(lib.search("bad")). to eq [track2]
    end
  end
end