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
    
    it "all method returns array containing saved tracks" do
      lib = MusicLibrary.new
      dbl1 = double("Fake track") ; dbl2 = double("Faker track")
      lib.add(dbl1)
      expect(lib.all).to eq [dbl1]
      lib.add(dbl2)
      expect(lib.all).to eq [dbl1, dbl2]
    end
    
    it "search method returns tracks that match keyword" do
      lib = MusicLibrary.new
      dbl1 = double(matches?: true)
      dbl2 = double(matches?: false)
      dbl3 = double(matches?: true)
      lib.add(dbl1)
      lib.add(dbl2)
      lib.add(dbl3)
      expect(lib.search("key")).to eq [dbl1, dbl3]
    end
    
  end
end