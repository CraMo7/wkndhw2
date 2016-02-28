require_relative("../classes/booking.rb")
require_relative("../classes/recordbook.rb")



class Hotel

  attr_reader :capacity, :occupancy

  def initialize(params)
    @single_rooms_total = params[:single_rooms]
    @double_rooms_total = params[:double_rooms]
    @capacity = @single_rooms_total + @double_rooms_total * 2
    @occupancy = params[:occupancy]
    @revenue = params[:revenue]
    @costs = params[:costs]
  end




  def read_record_book
    
  end

end# => class end