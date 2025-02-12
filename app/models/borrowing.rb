class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :book_id, uniqueness: { scope: message: "Borrowed" } #:user_id,
end
