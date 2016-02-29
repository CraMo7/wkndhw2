class RecordEntry
  def initialize(params = {})
    @user = params[:agent]
    @action = params[:action]
    @guest = params[:guest]
    @object = params[:object]
  end
  
  def add_to(record_book)
    unless record_book.class != RecordBook

    end
    
  end
end