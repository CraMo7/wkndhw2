require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/hotel.rb")
require_relative("../classes/guest.rb")
require_relative("../classes/room.rb")
require_relative("../classes/booking.rb")

class HotelTest < MiniTest::Test

  def setup
    # => booking setup
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

    guest1_params = {
      name: "James Bond",
      money: 784784,
      lead_guest: true
    }

    guest2_params = {
      name: "Miss Moneypenny",
      money: 80,
      lead_guest: false
    }

    guest3_params = {
      name: "Q",
    }

    guest4_params = {
      name: "Pussy Galore",
    }

    @guest1 = Guest.new(guest1_params)
    @guest2 = Guest.new(guest2_params)
    @guest3 = Guest.new(guest3_params)
    @guest4 = Guest.new(guest4_params)

    booking1_params = {
      lead_guest: @guest1,
      guests: [@guest2, @guest3, @guest4],
      rooms: [@room1, @room2],
    }

    @booking1 = Booking.new(booking1_params)
    # => end booking setup

    @hotel_params = {
      single_rooms: 25,
      double_rooms: 20,
      occupancy: 30, 
      revenue: 1500, 
      costs: 750,
      bookings: [@booking1]
    }
    @hotel = Hotel.new(@hotel_params)


  end

  def test_hotel_has_capacity
    assert_equal(65, @hotel.capacity)
  end

  def test_hotel_can_add_booking
    @hotel.add_booking(@booking1)
    assert_equal(Booking, @hotel.bookings[1].class)
  end

  # def test_hotel_can_read_recordbook
  #   assert_equal(RecordEntry, @recordbook.entries[0].class)
  # end


end# => class end