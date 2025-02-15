require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
    @book = Book.create!(title: "Unique Book", author: "Tester", isbn: SecureRandom.uuid)
  end

  test "should be valid" do
    borrowing = Borrowing.new(user: @user, book: @book, due_date: 2.weeks.from_now)
    assert borrowing.valid?
  end

  test "should not allow duplicate borrowing for the same user and book" do
    Borrowing.create!(user: @user, book: @book, due_date: 2.weeks.from_now)
    duplicate_borrowing = Borrowing.new(user: @user, book: @book, due_date: 2.weeks.from_now)
    assert_not duplicate_borrowing.valid?
  end
end


