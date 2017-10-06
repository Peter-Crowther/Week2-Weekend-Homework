require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test
  def setup
    @song = Song.new("Suspicious Minds", "Elvis")
    @song2 = Song.new("Still", "Dr Dre")
    @song3 = Song.new("Heart of Glass", "Blondie")
  end

  def test_song_has_title()
    actual = @song.title()
    assert_equal("Suspicious Minds", actual)
  end

  def test_song_has_artist()
    actual = @song.artist()
    assert_equal("Elvis", actual)
  end

end
