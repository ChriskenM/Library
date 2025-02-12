class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :borrowings, dependent: :destroy
  #has_many :books, through: :borrowings

  validates :email_address, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, on: :create
end
