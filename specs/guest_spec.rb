require ('minitest/autorun')
require ('pry')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Andrew Weir")
  end

  def test_initialize_guest
    assert_equal("Andrew Weir", @guest.guest)
  end


end