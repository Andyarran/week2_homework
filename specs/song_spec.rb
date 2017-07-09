require ('minitest/autorun')
require ('pry')
require_relative('../song.rb')

class TestSong < MiniTest::Test

    def setup
      @song_1 = Song.new("One For The Road", "Ronnie Lane", 1976)
    end

    def test_initialize_song
      assert_equal("Ronnie Lane", @song_1.artist)
    end

    def test_initialize_song_year
      assert_equal(1976, @song_1.year_recorded)
    end

end
