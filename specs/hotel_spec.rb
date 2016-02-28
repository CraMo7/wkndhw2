require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/hotel.rb")

class HotelTest < MiniTest::Test

  def setup
    @params = {
      single_rooms: 25,
      double_rooms: 20,
      occupancy: 30, 
      revenue: 1500, 
      costs: 750
    }
    @hotel = Hotel.new(@params)

    @recordbook = RecordBook.new(@params)

  end

  def test_hotel_has_capacity
    assert_equal(65, @hotel.capacity)
  end

  def test_hotel_can_read_recordbook
    assert_equal(RecordEntry, @recordbook.entries[0].class)
  end


end# => class end