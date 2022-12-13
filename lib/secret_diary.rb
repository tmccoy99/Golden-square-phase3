load "diary.rb"

class SecretDiary
  
  def initialize(diary)
    @diary = diary
    @locked = true
  end
  
  def read
    fail("Go away!") if @locked
    @diary.read
  end
  
  def unlock
    @locked = false
  end
  
  def lock
    @locked = true
  end
  
end