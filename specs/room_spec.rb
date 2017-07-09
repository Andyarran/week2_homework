require ('minitest/autorun')
require ('pry')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @room_1 = Room.new("Classic Rock Room", 20)
    @guest_1 = Guest.new("Andrew Weir")
    @song_1 = Song.new("One For The Road", "Ronnie Lane", 1976)
  end


  def test_initialize_room
    assert_equal(20, @room_1.capacity)
    assert_equal("Classic Rock Room", @room_1.name)
  end

  def test_get_room_name
      name = @room_1.get_room_name
      assert_equal("Classic Rock Room", name)
    end

    def test_check_room_capacity
      capacity = @room_1.check_room_capacity
      assert_equal(20, capacity)
    end

    def test_add_guest
        @room_1.add_guest(@guest_1)
        assert_includes(@room_1.occupants, @guest_1)
      end

      def test_remove_guest
        @room_1.add_guest(@guest_1)
        @room_1.remove_guest(@guest_1)
        assert_equal(false, @room_1.occupants.include?(@guest_1))
      end

end