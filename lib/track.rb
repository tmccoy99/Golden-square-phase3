class Track
  def initialize(title, artist) # title and artist are both strings
  @title = title ; @artist = artist
  @title_words = @title.split ; @artist_words = @artist.split
  end

  def matches?(keyword)
    (@title_words + @artist_words).include?(keyword)
  end
end