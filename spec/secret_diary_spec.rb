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
end