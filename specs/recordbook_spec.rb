require("minitest/autorun")
require("minitest/rg")
require_relative("../classes/recordbook.rb")
require_relative("../classes/recordentry.rb") 

class RecordBookTest < MiniTest::Test

  def setup

    entry1 = RecordEntry.new({
      agent: "Front Desk",
      action: "checked in",
      guest: guest1,
      object: room1,
      })

    @params = {
      entries: [entry1, entry2, entry3],

    }

    @recordbook = RecordBook.new()
  end

  def test_recordbook_has_entries_log

  end

end