require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Mark")
  end

  def test_guest_has_name()
    actual = @guest.name()
    assert_equal("Mark", actual)
  end


end
