require_relative("../classes/booking.rb")
require_relative("../classes/recordbook.rb")



class Hotel

  attr_reader :capacity, :occupancy, :bookings

  def initialize(params = {})
    params.has_key?(:single_rooms) ? @single_rooms_total = params[:single_rooms] : @single_rooms_total = 0
    params.has_key?(:double_rooms) ? @double_rooms_total = params[:double_rooms] : @double_rooms_total = 0
    params.has_key?(:single_rooms)
    @capacity = @single_rooms_total + @double_rooms_total * 2
    params.has_key?(:occupancy) ? @occupancy = params[:occupancy] : @occupancy = 0
    params.has_key?(:revenue) ? @revenue = params[:revenue] : @revenue = 0
    params.has_key?(:costs) ? @costs = params[:costs] : @costs = 0
    params.has_key?(:bookings) ? @bookings = params[:bookings] : @bookings = Array.new
  end

  def add_booking(booking)
    booking.class == Booking ? @bookings << booking : return
  end


  def read_record_book
    
  end

end# => class end