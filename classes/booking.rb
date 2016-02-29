require_relative("../classes/room.rb")

class Booking

  attr_reader :lead_guest, :guests, :rooms, :cost

  def initialize(params = {})
    @lead_guest = params[:lead_guest]
    @guests = params[:guests]
    @rooms = params[:rooms]
    @cost = 0
    for room in params[:rooms]
      @cost += room.rate
    end
  end



end