# test/controllers/borrowings_controller_test.rb
require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrowing = borrowings(:one)
    @user = users(:one)
    @book = books(:one)
    sign_in_as(@user)
  end

end

