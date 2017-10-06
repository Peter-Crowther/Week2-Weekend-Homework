require("minitest/autorun")
require("minitest/rg")
require_relative ("../room.rb")

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new()
  end

  def test_room_has_no_guests()
    actual = @room.number_of_guests()
    assert_equal(0, actual)
  end


end
