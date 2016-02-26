require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/recordbook.rb") 

class RecordBookTest < MiniTest::Test

  def setup
    @recordbook = RecordBook.new()
  end

  def test_recordbook_has_entries_log

  end

end