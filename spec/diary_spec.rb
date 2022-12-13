require "diary"

describe Diary do
  
  it "constructs" do
    Diary.new("contents")
  end
  
  it "returns @contents on #read calls" do
    expect(Diary.new("contents").read).to eq "contents"
  end
  
end