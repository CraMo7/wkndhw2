require_relative("recordentry.rb")

class RecordBook

attr_reader :entries

  def initialize(params = {})
    @entries = params[:entries]
    
  end
  
  def add(record_entry)
    unless record_entry.class != RecordEntry
      @entries << record_entry
    end
  end


end