require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/room.rb")
require_relative("../classes/hotel.rb")

class RoomTest < MiniTest::Test

  def setup
    @params1 = {
      size: :double,
      capacity: 2,
      rate: 100,
      occupancy: 2
    }
    @params2 = {
      size: :double,
      capacity: 2,
      rate: 100,
      occupancy: 0
    }

    @room1 = Room.new(@params1)
    @room2 = Room.new(@params2)

  end

  def test_room_has_rate
    assert_equal(100, @room1.rate)
  end

  def test_room_capacity_matches_size
    @room2.size == :double ? capacity = 2 : capacity = 1

    assert_equal(capacity, @room2.capacity)
    
  end

end