require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new("Graceland", 2)
    @room2 = Room.new("Nashville", 3)
    @room3 = Room.new("Barrowlands", 2)

    @song = Song.new("Suspicious Minds", "Elvis")

    @guest = Guest.new("Mark")
    @guest2 = Guest.new("Tony")
    @guest3 = Guest.new("Suzi")
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

  def test_room_capacity()
    actual = @room.room_capacity()
    assert_equal(2, actual)
  end

  def test_remove_guest_from_room()
    @room.add_guest(@guest)
    @room.add_guest(@guest2)
    actual = @room.number_of_guests()
    @room.remove_guest(@guest)
    actual = @room.number_of_guests
    assert_equal(1, actual)
  end

  def test_room_full()
    @room.add_guest(@guest)
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
    actual = @room.number_of_guests()
    result = @room.room_full()
    assert_equal("Sorry Pavarotti", result)
  end




end
