class Guest

  attr_reader :name, :lead_guest, :money


  def initialize(params = {})
    params.has_key?(:name) ? @name = params[:name] : @name = "Anonymous Guest" + Random.new(1000000).to_s
    params.has_key?(:money) ? @money = params[:money] : @money = 0
    params.has_key?(:lead_guest) ? @lead_guest = params[:lead_guest] : @lead_guest = false
    unless @lead_guest == true
      @lead_guest = false end
  end
  
  
end