class Room

attr_reader :capacity, :size, :rate, :occupancy

  def initialize(params)
    @capacity = params[:capacity]
    @rate = params[:rate]
    @size = params[:size]
    @occupancy = params[:occupancy]
  end
  
  def fill
    @occupancy = @capacity
  end
  
end