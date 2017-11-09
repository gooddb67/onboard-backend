class User < ApplicationRecord
  has_secure_password

  has_many :user_rooms
  has_many :rooms, through: :user_rooms
  has_many :experiences
  has_many :posts
  has_many :answers
end
