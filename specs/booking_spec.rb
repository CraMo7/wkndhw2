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
  end

  def test_booking_has_accurate_cost
    assert_equal(200, @booking1.cost)

  end

  def test_lead_guest_has_enough_money
    @booking1.lead_guest.money >= @booking1.cost ? lead_guest_has_enough_money = true : lead_guest_has_enough_money = false
    assert_equal(true, lead_guest_has_enough_money)
    
  end

  def test_switch_lead_guest
    
  end

end