require "secret_diary"

describe SecretDiary do
  context "initially" do
    it "constructs" do
      SecretDiary.new(double(:fake_diary))
    end
    
    it "raises 'Go away!' error when #read called" do
      secret_diary = SecretDiary.new(double(:fake_diary))
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end
  
  context "#read is called after #unlock is called on locked instance" do
    it "returns @contents of Diary instance" do
      secret_diary =  SecretDiary.new(double(read: "contents"))
      secret_diary.unlock
      expect(secret_diary.read).to eq "contents"
    end
  end
  
  context "#read is called after #lock is called on unlocked instance" do
    it "raises 'Go away!' error when #read called" do
      secret_diary = SecretDiary.new(double(:fake_diary))
      secret_diary.unlock
      secret_diary.lock
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end
end