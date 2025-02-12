class BooksController < ApplicationController
    # This filter will require sign in for actions unless explicitly skipped
    before_action :require_sign_in

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
end
