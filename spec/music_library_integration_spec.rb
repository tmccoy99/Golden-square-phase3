require "music_library"

RSpec.describe "MusicLibrary integration testing" do
  context "With tracks added to music library" do
    it "all returns saved tracks in array" do
      lib = MusicLibrary.new
      track1 = Track.new("great_song", "great_band")
      track2 = Track.new("bad_song", "bad_band")
      lib.add(track1)
      expect(lib.all).to eq [track1]
      lib.add(track2)
      expect(lib.all).to eq [track1, track2]
    end
    
  end
end