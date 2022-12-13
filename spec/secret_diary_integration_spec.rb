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
  
  context "#read is called after #unlock is called on locked instance" do
    it "returns @contents of Diary instance" do
      secret_diary =  SecretDiary.new(Diary.new("contents"))
      secret_diary.unlock
      expect(secret_diary.read).to eq "contents"
    end
  end
  
  context "#read is called after #lock is called on unlocked instance" do
    it "raises 'Go away!' error" do
      secret_diary =  SecretDiary.new(Diary.new("contents"))
      secret_diary.unlock
      expect(secret_diary.read).to eq "contents"
      secret_diary.lock
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end
end

