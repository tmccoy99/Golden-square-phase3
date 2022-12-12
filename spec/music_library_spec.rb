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
  
  
    it "returns empty array on calls of search" do
      expect(empty_lib.search("Spice")).to eq []
    end
    
  end
  
  context "When library contains tracks" do
    lib = MusicLibrary.new
    it "all method returns array containing saved tracks" do
      dbl = double("Fake track", matches?: true)
      lib.add(dbl)
      expect(lib.all).to eq [dbl]
    end
    
  end
end