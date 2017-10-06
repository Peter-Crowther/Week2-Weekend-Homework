require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Mark", 20)
    @guest2 = Guest.new("Tony", 10)
    @guest3 = Guest.new("Suzi", 5)
  end

  def test_guest_has_name()
    actual = @guest.name()
    assert_equal("Mark", actual)
  end

  def test_guest_has_name()
    actual = @guest2.name()
    assert_equal("Tony", actual)
  end

  def test_guest_has_cash
    actual = @guest.cash()
    assert_equal(20, actual)
  end


end
