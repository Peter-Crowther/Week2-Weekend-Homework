require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new("Graceland")
    @room2 = Room.new("Nashville")
    @room3 = Room.new("Barrowlands")

    @song = Song.new("Suspicious Minds", "Elvis")
    @guest = Guest.new("Mark")
  end

  def test_room_has_no_guests()
    actual = @room.number_of_guests()
    assert_equal(0, actual)
  end

  def test_room_has_no_songs()
    actual = @room.number_of_songs()
    assert_equal(0, actual)
  end

  def test_room_name()
    actual = @room.room_name()
    assert_equal("Graceland", actual)
  end

  def test_add_song_to_room()
    @room.add_song(@song)
    actual = @room.number_of_songs()
    assert_equal(1, actual)
  end

  def test_add_guest_to_room()
    @room.add_guest(@guest)
    actual = @room.number_of_guests()
      assert_equal(1, actual)

  end






end
