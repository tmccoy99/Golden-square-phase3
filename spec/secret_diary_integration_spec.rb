require "secret_diary"

describe "SecretDiary integration testing:" do
  context "on initialisation it:" do
    it "constructs" do
      SecretDiary.new(Diary.new)
    end
  end
end

