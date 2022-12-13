require "diary"

describe Diary do
  context "initially it" do
    it "constructs" do
      Diary.new("contents")
    end
  end
end