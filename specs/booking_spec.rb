require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/booking.rb")
require_relative("../classes/room.rb")
require_relative("../classes/guest.rb")

class BookingTest < MiniTest::Test

  def setup
    room1_params = {
      size: :double,
      capacity: 2,
      rate: 100,
      occupancy: 0
    }
    room2_params = {
      size: :double,
      capacity: 2,
      rate: 100,
      occupancy: 0
    }

    @room1 = Room.new(room1_params)
    @room2 = Room.new(room2_params)

    booking1_params = {
      lead_guest: "James Bond",
      guests: ["Miss Moneypenny", "Q", "Pussy Galore"],
      rooms: [@room1, @room2],
    }

    @booking1 = Booking.new(booking1_params)
  end

  def test_booking_has_accurate_cost
    assert_equal(200, @booking1.cost)

  end

end