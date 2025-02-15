# test/controllers/books_controller_test.rb
require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
    @user = users(:one)
    sign_in_as(@user)
  end

end

