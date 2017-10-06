require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Mark")
    @guest2 = Guest.new("Tony")
    @guest3 = Guest.new("Suzi")
  end

  def test_guest_has_name()
    actual = @guest.name()
    assert_equal("Mark", actual)
  end

  def test_guest_has_name()
    actual = @guest2.name()
    assert_equal("Tony", actual)
  end


end
