require "secret_diary"

describe "SecretDiary integration testing:" do
  context "on initialisation it:" do
    it "constructs" do
      SecretDiary.new(Diary.new("contents"))
    end
    
    it "raises 'Go away!' error when #read called" do
      secret_diary =  SecretDiary.new(Diary.new("contents"))
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end
end

