class BorrowingsController < ApplicationController
    # This filter will require sign in for actions unless explicitly skipped
    before_action :require_sign_in

  before_action :set_book, only: [:create]

  def create
    @borrowing = Borrowing.new(user: current_user, book: @book, due_date: 14.days.from_now)

    if @borrowing.save
      redirect_to user_path(current_user), notice: "Book borrowed successfully!"
    else
      redirect_to @book, alert: "This book is already borrowed."
    end
  end

  def destroy
    @borrowing = Borrowing.find(params[:id])
    @borrowing.destroy
    redirect_to user_path(current_user), notice: "Book returned successfully!"
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end
end
