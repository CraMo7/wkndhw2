class Guest

  attr_reader :name, :lead_guest


  def initialize(params)
    @name = params[:name]
    params[:money].class == Fixnum ? @money = params[:money] : @money = 0
    params[:lead_guest].class == TrueClass ? @lead_guest = params[:lead_guest] : @lead_guest = false
  end
  
  
end