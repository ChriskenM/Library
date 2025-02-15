class Book < ApplicationRecord
    has_many :borrowings, dependent: :destroy
    has_many :users, through: :borrowings

    validates :title, :author, presence: true
    validates :isbn, presence: true, uniqueness: true
end
