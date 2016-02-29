require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/guest.rb")

class GuestTest < MiniTest::Test

  def setup
    guest_craig_params = {
      name: "Craig Morton",
      money: 500,
      lead_guest: true,
    }

    @guest_craig = Guest.new(guest_craig_params)

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

    guest5_params = {

    }

    @guest5 = Guest.new
  end

  def test_guest_has_name
    assert_equal("Craig Morton", @guest_craig.name)
  end

  def test_guests_money_defaults_when_not_passed
    assert_equal(0, @guest3.money)
  end

  def test_guests_lead_status_defaults_when_not_passed
    assert_equal(false, @guest4.lead_guest)
  end

  def test_validation_catches_no_params
    assert_equal("Anonymous Guest", @guest5.name[0,15])
  end

  
end