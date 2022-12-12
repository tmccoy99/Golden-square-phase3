require "music_library"

RSpec.describe MusicLibrary do
  it "constructs" do
    MusicLibrary.new
  end
  
  context "When library has no tracks" do
    empty_lib = MusicLibrary.new
    it "returns empty array on calls of all" do
      expect(empty_lib.all).to eq []
    end
  end
end