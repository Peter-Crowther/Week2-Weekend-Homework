require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new("Graceland")
    @room2 = Room.new("Nashville")
    @room3 = Room.new("Barrowlands")
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




end
