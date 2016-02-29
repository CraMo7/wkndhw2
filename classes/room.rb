class Room

attr_reader :capacity, :size, :rate, :occupancy

def initialize(params = {})
  params.has_key?(:capacity) ? @capacity = params[:capacity] : @capacity = 0
  params.has_key?(:size) ? @size = params[:size] : @size = 0
  params.has_key?(:rate) ? @rate = params[:rate] : @rate = @size * 50
  params.has_key?(:occupancy) ? @occupancy = params[:occupancy] : @occupancy = 0
end

def fill
  @occupancy = @capacity
end
  
end