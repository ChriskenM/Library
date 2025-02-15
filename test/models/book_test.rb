require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should be valid" do
    book = Book.new(
      title: "Test Book",
      author: "Test Author",
      isbn: "9781234567890"
    )
    assert book.valid?
  end
end