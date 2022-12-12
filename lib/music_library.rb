class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    @tracks
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end