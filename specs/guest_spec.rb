require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/guest.rb")

class GuestTest < MiniTest::Test

  def setup
    guest1_params = {
      name: "Craig Morton",
      money: 500,
      lead_guest: true,
    }

    @guest1 = Guest.new(guest1_params)
  end

  def test_guest_has_name
    assert_equal("Craig Morton", @guest1.name)
  end

end