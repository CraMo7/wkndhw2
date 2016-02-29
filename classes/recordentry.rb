class RecordEntry
  def initialize(params = {})
    params.has_key?(:agent) ? @agent = params[:agent] : @agent = "Anonymous-User"
    params.has_key?(:action) ? @action = params[:action] : @action = "Unknown-Action"
    params.has_key?(:guest) ? @guest = params[:guest] : @guest = "Anonymous-Guest"
    params.has_key?(:object) ? @object = params[:object] : @object = "Unknown-Object"
  end

  def create_entry
    @output = "#{@agent} did #{@action} for #{@guest}'s #{@object}"
    
  end
  
  def add_to(record_book)
    unless record_book.class != RecordBook

    end
    
  end
end