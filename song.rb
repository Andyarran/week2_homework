class Song

  attr_reader :song_title, :artist, :year_recorded

  def initialize(song_title, artist, year_recorded)
    @song_title = song_title
    @artist = artist
    @year_recorded = year_recorded
  end

end