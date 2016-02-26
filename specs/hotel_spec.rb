require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/hotel.rb")

class HotelTest < MiniTest::Test

  def setup
    @hotel = Hotel.new(50)
  end

  def test_hotel_has_capacity
    assert_equal(50, @hotel.capacity)
  end

end